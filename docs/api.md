Understood. Here is the second of the requested deliverables.

This document details the internal API of the application. It defines the public-facing contract of the `WingetService`, which acts as the sole intermediary between the application logic and the `winget.exe` command-line tool.

---

## API Specification Document
**Project:** Wingard
**Version:** 1.0
**Date:** 2025-02-25
**Author:** Principal AI Architect

### 1. Introduction

#### 1.1. Purpose
This document defines the public contract for the core services within the Wingard application. Its primary purpose is to specify the methods, data models, and error handling for the `WingetService`, which encapsulates all interaction with the underlying `winget.exe` process. By adhering to this specification, the application's state management layer (`Riverpod`) can interact with the service layer in a consistent, predictable, and decoupled manner.

#### 1.2. Scope
This specification covers the internal service API for the V1 release of Wingard. It is not a web API. All interactions are local, in-process calls between different layers of the Flutter application.

---

### 2. Core Service: `WingetService`

The `WingetService` is a singleton class provided to the application via Riverpod. It is the only component authorized to execute and parse output from `winget.exe`.

#### 2.1. General Behavior & Error Handling
*   **Process Management:** All methods that invoke `winget.exe` must do so asynchronously and must implement a standard timeout (e.g., 60 seconds) to prevent hangs.
*   **Error Handling:** The service must not throw raw `ProcessException`s. It will catch all exceptions related to process execution, parsing, or timeouts and wrap them in a custom, structured `WingetException` class.
    ```dart
    // In a freezed model file
    @freezed
    class WingetException with _$WingetException implements Exception {
      const factory WingetException.processFailed({
        required String command,
        required int exitCode,
        required String errorMessage,
      }) = _ProcessFailed;

      const factory WingetException.parsingFailed({
        required String command,
        required String rawOutput,
      }) = _ParsingFailed;

      const factory WingetException.timedOut({
        required String command,
      }) = _TimedOut;
    }
    ```
*   **Internationalization:** Methods that fetch descriptive data will accept an optional `Locale` parameter, which will be passed to `winget.exe` using the `--locale` flag.

---

### 3. Data Models

These are the core, immutable data models (`freezed` classes) returned by the `WingetService`.

#### **3.1. `Package`**
Represents a single software package.

*   **Fields:**
    *   `id` (String, required): The unique package identifier (e.g., `Microsoft.PowerToys`).
    *   `name` (String, required): The display name (e.g., "PowerToys").
    *   `version` (String, required): The currently installed version.
    *   `newVersion` (String, optional): The available update version.
    *   `publisher` (String, optional): The publisher's name.

#### **3.2. `PackageDetails`**
A rich model representing all metadata for a single package. It extends `Package`.

*   **Fields:**
    *   *(Inherits all fields from `Package`)*
    *   `description` (String, optional): The package description.
    *   `homepage` (String, optional): The URL to the package's homepage.
    *   `license` (String, optional): The license type.
    *   `licenseUrl` (String, optional): A URL to the full license.
    *   `releaseNotes` (String, optional): The release notes for the latest version.
    *   `releaseNotesUrl` (String, optional): A URL to the full release notes.
    *   `allUrls` (List<String>, required): A synthesized list of all URLs found in the metadata, used for the icon fetching logic.

#### **3.3. `WingetTask`**
Represents a long-running operation like an install or update.

*   **Fields:**
    *   `packageId` (String, required): The ID of the package being acted upon.
    *   `processStream` (Stream<String>, required): A stream that yields live `stdout` and `stderr` output from the running `winget.exe` process.
    *   `result` (Future<int>, required): A future that completes with the process's exit code when it finishes.

---

### 4. `WingetService` Method Definitions

#### **4.1. Health & Info**
*   **`Future<bool> isWingetInstalled()`**
    *   **Description:** Checks if `winget.exe` is available and executable.
    *   **Returns:** A `Future<bool>` that completes with `true` if functional, `false` otherwise.

*   **`Future<String> getWingetInfo()`**
    *   **Description:** Runs `winget --info` to get diagnostic data.
    *   **Returns:** A `Future<String>` containing the raw, formatted output.

#### **4.2. Data Fetching Methods**
*   **`Future<List<Package>> getUpgradablePackages()`**
    *   **Description:** Executes `winget upgrade` and parses the output to find all packages with available updates.
    *   **Returns:** A `Future` that completes with a `List<Package>`. The `newVersion` field will be populated for each package.
    *   **Throws:** `WingetException` on failure.

*   **`Future<List<Package>> getInstalledPackages()`**
    *   **Description:** Executes `winget export` to a temporary JSON file and parses the result. This is the robust method for getting installed apps.
    *   **Returns:** A `Future` that completes with a `List<Package>`.
    *   **Throws:** `WingetException` on failure.

*   **`Future<PackageDetails> getPackageDetails(String packageId, {Locale? locale})`**
    *   **Description:** Executes `winget show --id <packageId>` and parses the full metadata.
    *   **Parameters:**
        *   `packageId`: The unique ID of the package to show.
        *   `locale`: An optional locale for requesting translated metadata.
    *   **Returns:** A `Future` that completes with a rich `PackageDetails` object.
    *   **Throws:** `WingetException` on failure.

#### **4.3. Action Methods**
*   **`WingetTask upgradePackage(String packageId)`**
    *   **Description:** Initiates a `winget upgrade --id <packageId>` operation. This method returns immediately with a `WingetTask` object, allowing the caller to stream the output and await the result.
    *   **Returns:** A `WingetTask` object.

*   **`WingetTask uninstallPackage(String packageId)`**
    *   **Description:** Initiates a `winget uninstall --id <packageId>` operation.
    *   **Returns:** A `WingetTask` object.

#### **4.4. Icon Fetching Logic**
*   **`Future<String?> getIconUrl(String packageId)`**
    *   **Description:** Implements the 3-tier icon fetching strategy. This is a high-level method that orchestrates calls to `getPackageDetails` and potentially other services.
    *   **Logic:**
        1.  Calls `getPackageDetails(packageId)`.
        2.  Parses the result for the `PackageIcon` field. If found, returns the URL.
        3.  If not found, parses for a GitHub URL in the `allUrls` list. If found, constructs and returns the `github.com/<name>.png` URL.
        4.  If no icon is found, returns `null`.
    *   **Returns:** A `Future` that completes with the best available icon URL as a `String`, or `null` if no icon could be found through Tiers 1 or 2.

This API specification provides a clear and stable contract for the core service, enabling parallel development of the UI and state management layers.