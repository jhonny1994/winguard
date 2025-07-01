# Wingard V1 - Project Plan

This document outlines the high-level tasks required to deliver the V1 of the Wingard application. It serves as a living document to track our progress against the project's goals.

---

### Phase 0: Project Foundation & Setup

- [x] Create core "Feature-First" directory structure.
- [x] Add all required dependencies to `pubspec.yaml`.
- [x] Implement the main application entry point (`lib/main.dart`).
- [x] Configure `fluent_ui` theming (Light, Dark, System).
- [x] Set up basic declarative routing with `go_router`.

### Phase 1: Core Service Layer

- [x] Define immutable data models with `freezed` (`Package`, `PackageDetails`, `WingetException`).
- [x] Implement the `WingetService` singleton.
- [x] Implement `isWingetInstalled()` health check.
- [x] Implement `getUpgradablePackages()` data fetching.
- [x] Implement `getInstalledPackages()` data fetching.
- [x] Implement `getPackageDetails()` data fetching.

### Phase 2: Shared UI Components

- [ ] Create the `StatefulContentArea` wrapper for handling loading/error/empty states.
- [ ] Create the `PackageListCard` widget for displaying packages in lists.
- [ ] Create the `GeneratedIcon` fallback widget.

### Phase 3: Core Features

- [ ] **Updates Feature:**
    - [ ] Create `updates_provider` to fetch upgradable packages.
    - [ ] Build the "Updates" page UI.
- [ ] **Installed Apps Feature:**
    - [ ] Create `installed_apps_provider` to fetch installed packages.
    - [ ] Build the "Installed Apps" page UI.
    - [ ] Implement real-time filtering logic.
- [ ] **Package Details Feature:**
    - [ ] Build the "Package Details" page UI.

### Phase 4: Actions & Feedback System

- [ ] Build the `ActivityPanel` UI shell.
- [ ] Create an `ActivityLogProvider` to manage the state of running tasks.
- [ ] Implement `upgradePackage` and `uninstallPackage` methods in `WingetService` to return a `WingetTask`.
- [ ] Connect UI actions ("Update All", "Update", "Uninstall") to the `ActivityLogProvider`.
- [ ] Implement dynamic UI refresh upon task completion.

### Phase 5: Settings & Personalization

- [ ] Build the "Settings" page UI.
- [ ] Implement theme-switching logic.
- [ ] Implement internationalization controls (if translations are available).

### Phase 6: Finalization & Polish

- [ ] Implement window size/position persistence with `window_manager`.
- [ ] Add comprehensive error handling dialogs.
- [ ] Write user-facing installation instructions in `README.md`.
- [ ] Configure the `msix` package for building the release installer.
- [ ] (Optional) Set up GitHub Actions for automated builds. 