import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:winguard/core/errors/winget_exception.dart';
import 'package:winguard/shared/models/package.dart';
import 'package:winguard/shared/models/package_details.dart';

part 'winget_service.g.dart';

/// The WingetService is the central interface for interacting with the
/// winget.exe command-line tool. It provides methods for querying installed
/// packages, available updates, and package details.
class WingetService {
  /// The base command for winget
  static const String _wingetCommand = 'winget';

  /// Process timeout duration
  static const Duration _processTimeout = Duration(minutes: 2);

  /// Check if winget is installed on the system
  Future<bool> isWingetInstalled() async {
    try {
      await Process.run('where', [_wingetCommand]);
      return true;
    } on ProcessException {
      return false;
    }
  }

  /// Get a list of packages that have updates available
  Future<List<Package>> getUpgradablePackages() async {
    const command = [
      'list',
      '--upgrade-available',
      '--include-unknown',
    ];
    return _parseTabularOutput(command);
  }

  /// Get a list of all installed packages
  Future<List<Package>> getInstalledPackages() async {
    // Use winget export to get JSON data for installed packages
    return _getInstalledPackagesFromExport();
  }

  /// Get detailed information about a specific package
  Future<PackageDetails> getPackageDetails(String packageId) async {
    // For package details, we'll parse the tabular output since JSON might not be available
    const command = ['show', '--id'];
    return _parsePackageDetailsFromTabular(packageId, [...command, packageId]);
  }

  /// Update a specific package
  Future<void> updatePackage(String packageId) async {
    final command = [
      'upgrade',
      '--id',
      packageId,
      '--silent',
      '--accept-source-agreements',
      '--accept-package-agreements',
    ];

    try {
      final processResult = await Process.run(
        _wingetCommand,
        command,
        runInShell: true,
      ).timeout(_processTimeout);

      if (processResult.exitCode != 0) {
        throw WingetException.processFailed(
          command: command.join(' '),
          exitCode: processResult.exitCode,
          errorMessage: processResult.stderr.toString().trim(),
        );
      }
    } on TimeoutException {
      throw WingetException.timedOut(command: command.join(' '));
    } on ProcessException catch (e) {
      throw WingetException.processFailed(
        command: command.join(' '),
        exitCode: e.errorCode,
        errorMessage: e.message,
      );
    }
  }

  /// Update all packages that have updates available
  Future<void> updateAllPackages() async {
    const command = [
      'upgrade',
      '--all',
      '--silent',
      '--accept-source-agreements',
      '--accept-package-agreements',
    ];

    try {
      final processResult = await Process.run(
        _wingetCommand,
        command,
        runInShell: true,
      ).timeout(const Duration(minutes: 30)); // Longer timeout for update all

      if (processResult.exitCode != 0) {
        throw WingetException.processFailed(
          command: command.join(' '),
          exitCode: processResult.exitCode,
          errorMessage: processResult.stderr.toString().trim(),
        );
      }
    } on TimeoutException {
      throw WingetException.timedOut(command: command.join(' '));
    } on ProcessException catch (e) {
      throw WingetException.processFailed(
        command: command.join(' '),
        exitCode: e.errorCode,
        errorMessage: e.message,
      );
    }
  }

  /// Parses the output of a winget command that returns tabular data
  Future<List<Package>> _parseTabularOutput(List<String> args) async {
    final command = '$_wingetCommand ${args.join(' ')}';
    try {
      final processResult = await Process.run(
        _wingetCommand,
        [...args, '--accept-source-agreements', '--disable-interactivity'],
        runInShell: true,
      ).timeout(_processTimeout);

      if (processResult.exitCode != 0) {
        throw WingetException.processFailed(
          command: command,
          exitCode: processResult.exitCode,
          errorMessage: processResult.stderr.toString().trim(),
        );
      }

      final output = processResult.stdout.toString();
      return _convertOutputToPackages(output);
    } on TimeoutException {
      throw WingetException.timedOut(command: command);
    } on ProcessException catch (e) {
      throw WingetException.processFailed(
        command: command,
        exitCode: e.errorCode,
        errorMessage: e.message,
      );
    }
  }

  /// Helper function to convert tabular command output to a list of Package objects
  List<Package> _convertOutputToPackages(String output) {
    // Clean the output more thoroughly
    final cleanLines = <String>[];
    final allLines = output.split('\n');

    var foundHeader = false;
    for (final line in allLines) {
      final trimmed = line.trim();

      // Skip empty lines
      if (trimmed.isEmpty) continue;

      // Skip lines with only progress indicators
      if (RegExp(r'^[\s\-\\|/]+$').hasMatch(trimmed)) continue;

      // Look for the header line - extract just the header part
      if (trimmed.contains('Name') &&
          trimmed.contains('Id') &&
          trimmed.contains('Version')) {
        foundHeader = true;
        // Extract just the header line from mixed content
        final subLines = line.split('\n');
        var headerFound = false;
        for (final subLine in subLines) {
          final cleanSubLine = subLine.trim();
          // Look for a line that starts with "Name" and contains all headers
          if (cleanSubLine.startsWith('Name') &&
              cleanSubLine.contains('Id') &&
              cleanSubLine.contains('Version') &&
              cleanSubLine.contains('Available') &&
              cleanSubLine.contains('Source')) {
            cleanLines.add(cleanSubLine);
            headerFound = true;
            break;
          }
        }
        // If we couldn't extract a clean header, use the whole line (fallback)
        if (!headerFound) {
          cleanLines.add(trimmed);
        }
        continue;
      }

      // Skip separator lines (dashes)
      if (RegExp(r'^-+$').hasMatch(trimmed)) {
        if (foundHeader) cleanLines.add(trimmed);
        continue;
      }

      // Skip final summary lines
      if (trimmed.contains('upgrades available')) continue;

      // Add actual package lines (only after we found the header)
      if (foundHeader && trimmed.length > 50) {
        // Package lines are typically long
        cleanLines.add(trimmed);
      }
    }

    // Skip header lines and empty lines
    if (cleanLines.length < 3) return [];

    // Use standard winget column positions (based on typical winget output format)
    const nameStart = 0;
    const idStart = 29;
    const versionStart = 67;
    const availableStart = 82;
    const sourceStart = 96;

    // Find any header line for reference (but use standard positions)
    var headerIndex = -1;
    for (var i = 0; i < cleanLines.length; i++) {
      if (cleanLines[i].contains('Name') && cleanLines[i].contains('Id')) {
        headerIndex = i;
        break;
      }
    }

    // If no header found, assume packages start from the beginning
    if (headerIndex == -1) {
      headerIndex = -1; // Start from first line
    }

    final packages = <Package>[];
    // Process package lines (skip header if found)
    final startIndex = headerIndex >= 0 ? headerIndex + 2 : 0;
    final packageLines = headerIndex >= 0
        ? cleanLines.skip(startIndex)
        : cleanLines.where(
            (line) => !line.contains('Name') && !line.contains('Id'),
          );

    for (final line in packageLines) {
      if (line.trim().isEmpty || line.contains('upgrades available')) continue;
      if (line.length < availableStart) continue; // Skip malformed lines

      try {
        // Extract based on column positions
        final name = _extractColumn(line, nameStart, idStart).trim();
        final id = _extractColumn(line, idStart, versionStart).trim();
        final version = _extractColumn(
          line,
          versionStart,
          availableStart,
        ).trim();
        final availableVersion = sourceStart > 0
            ? _extractColumn(line, availableStart, sourceStart).trim()
            : line.substring(availableStart).trim();

        // Clean up the available version - remove source info if present
        var cleanAvailableVersion = availableVersion
            .split(RegExp(r'\s+'))
            .first;
        if (cleanAvailableVersion == '<' || cleanAvailableVersion.isEmpty) {
          cleanAvailableVersion = version; // No update available
        }

        if (name.isNotEmpty && id.isNotEmpty && version.isNotEmpty) {
          final package = Package(
            name: name,
            id: id,
            version: version,
            newVersion: cleanAvailableVersion != version
                ? cleanAvailableVersion
                : null,
          );
          packages.add(package);
        }
      } on Exception {
        // Skip malformed lines
        continue;
      }
    }
    return packages;
  }

  /// Helper to extract text between two column positions
  String _extractColumn(String line, int start, int end) {
    if (start >= line.length) return '';
    if (end <= start || end > line.length) {
      return line.substring(start);
    }
    return line.substring(start, end);
  }

  /// Exports installed packages to get comprehensive package list
  Future<List<Package>> _getInstalledPackagesFromExport() async {
    final tempFile =
        'temp_export_${DateTime.now().millisecondsSinceEpoch}.json';
    final command = [
      'export',
      '--output',
      tempFile,
      '--accept-source-agreements',
    ];

    try {
      final processResult = await Process.run(
        _wingetCommand,
        command,
        runInShell: true,
      ).timeout(_processTimeout);

      if (processResult.exitCode != 0) {
        // Fallback to list command if export fails
        return _parseTabularOutput(['list']);
      }

      final file = File(tempFile);
      if (!file.existsSync()) {
        return _parseTabularOutput(['list']);
      }

      final jsonString = await file.readAsString();
      final jsonData = json.decode(jsonString) as Map<String, dynamic>;

      final packages = <Package>[];
      final sources = jsonData['Sources'] as List<dynamic>? ?? [];

      for (final source in sources) {
        final sourceMap = source as Map<String, dynamic>;
        final sourcePackages = sourceMap['Packages'] as List<dynamic>? ?? [];
        for (final packageJson in sourcePackages) {
          final packageMap = packageJson as Map<String, dynamic>;
          final packageId = packageMap['PackageIdentifier'] as String?;
          if (packageId != null) {
            packages.add(
              Package(
                id: packageId,
                name: packageId, // We'll use the ID as name for now
                version: 'Unknown', // Export doesn't include version info
              ),
            );
          }
        }
      }

      // Clean up temp file
      try {
        await file.delete();
      } on Exception {
        // Ignore deletion errors
      }

      return packages;
    } on Exception {
      // Clean up temp file on error
      try {
        final file = File(tempFile);
        if (file.existsSync()) {
          await file.delete();
        }
      } on Exception {
        // Ignore deletion errors
      }

      // Fallback to list command
      return _parseTabularOutput(['list']);
    }
  }

  /// Parse package details from tabular show output
  Future<PackageDetails> _parsePackageDetailsFromTabular(
    String packageId,
    List<String> args,
  ) async {
    final command = '$_wingetCommand ${args.join(' ')}';
    try {
      final processResult = await Process.run(
        _wingetCommand,
        [...args, '--accept-source-agreements'],
        runInShell: true,
      ).timeout(_processTimeout);

      if (processResult.exitCode != 0) {
        throw WingetException.processFailed(
          command: command,
          exitCode: processResult.exitCode,
          errorMessage: processResult.stderr.toString().trim(),
        );
      }

      final output = processResult.stdout.toString();
      return _parsePackageDetailsOutput(packageId, output);
    } on TimeoutException {
      throw WingetException.timedOut(command: command);
    } on ProcessException catch (e) {
      throw WingetException.processFailed(
        command: command,
        exitCode: e.errorCode,
        errorMessage: e.message,
      );
    }
  }

  /// Parse package details from show command output
  PackageDetails _parsePackageDetailsOutput(String packageId, String output) {
    final lines = output.split('\n');
    String? name;
    String? version;
    String? publisher;
    String? description;

    for (final line in lines) {
      final trimmed = line.trim();
      if (trimmed.startsWith('Found ')) {
        // Extract name from "Found PackageName [PackageId]"
        final match = RegExp(r'Found (.+?) \[').firstMatch(trimmed);
        if (match != null) {
          name = match.group(1);
        }
      } else if (trimmed.startsWith('Version:')) {
        version = trimmed.substring(8).trim();
      } else if (trimmed.startsWith('Publisher:')) {
        publisher = trimmed.substring(10).trim();
      } else if (trimmed.startsWith('Description:')) {
        description = trimmed.substring(12).trim();
      }
    }

    return PackageDetails(
      id: packageId,
      name: name ?? packageId,
      version: version ?? 'Unknown',
      publisher: publisher,
      description: description,
    );
  }

  Future<String?> getIconUrl(String packageId) async {
    try {
      final details = await getPackageDetails(packageId);

      // Tier 1: Check for a direct PackageIcon URL.
      if (details.packageIcon != null &&
          (Uri.tryParse(details.packageIcon!)?.isAbsolute ?? false)) {
        return details.packageIcon;
      }

      // Tier 2: Search for a GitHub URL to derive an icon from.
      final githubUrl = details.allUrls.firstWhere(
        (url) => url.contains('github.com'),
        orElse: () => '',
      );

      if (githubUrl.isNotEmpty) {
        final uri = Uri.tryParse(githubUrl);
        if (uri != null && uri.pathSegments.length >= 2) {
          final owner = uri.pathSegments[0];
          return 'https://github.com/$owner.png';
        }
      }

      // Tier 3: No icon found.
      return null;
    } on Exception {
      // If getPackageDetails fails or any parsing goes wrong, return null.
      return null;
    }
  }
}

/// Provider for the WingetService
@riverpod
WingetService wingetService(Ref ref) {
  return WingetService();
}
