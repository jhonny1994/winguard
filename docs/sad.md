## System Architecture Document (SAD)
**Project:** Wingard

### 1. Introduction

#### 1.1. Purpose
This document provides a comprehensive architectural overview of the Wingard application. It details the system's structure, core components, key technical decisions, and the technology stack. The architecture is designed to be robust, scalable, maintainable, and aligned with the project's vision of creating a premium, native Windows application for `winget` GUI management.

#### 1.2. Scope
The scope of this document covers the V1 release of Wingard. This includes the application's client-side architecture, its interaction with the local operating system and the `winget` command-line tool, and the core design patterns that will govern its implementation. It does not cover any external servers or services, as none are required for V1.

---

### 2. Architectural Principles & Goals

The architecture is designed to adhere to the following core principles:

*   **Decoupling:** A strict separation of concerns between the user interface (Presentation), application state (State Management), and system interaction (Service Layer).
*   **Reactivity:** The UI will be a reactive function of the application's state. State changes will automatically propagate to the UI, ensuring it is always consistent and up-to-date.
*   **Extensibility:** The architecture will be modular (Feature-First), allowing for the addition of new features (e.g., Global Search) in the future with minimal impact on existing code.
*   **Security:** Adherence to the project's "Elevated by Default" model, with a clear understanding of its security posture.
*   **Maintainability:** By using code generation (`freezed`, `riverpod_generator`) and a consistent feature-based structure, the codebase will be easy to understand, debug, and maintain.

---

### 3. System Diagram & Component Overview

This diagram illustrates the high-level architecture of the Wingard application, showing the flow of data and control between its core components.

```
+-------------------------------------------------------------------------+
|                                                                         |
|  Wingard Application (Runs with Administrator Privileges)               |
|                                                                         |
|  +---------------------------+       +--------------------------------+ |
|  |   Presentation Layer      |       |        State Layer             | |
|  |     (Flutter Widgets)     |<----->|       (Riverpod Providers)     | |
|  |                           |       |                                | |
|  |  +---------------------+  |       |  +--------------------------+  | |
|  |  |    UI Components    |  |       |  |   State Notifiers        |  | |
|  |  | (fluent_ui Widgets) |  |       |  | (ActivityQueue, Filter)  |  | |
|  |  | - Pages             |  |       |  +--------------------------+  | |
|  |  | - Cards             |  |       |                                | |
|  |  | - ActivityPanel     |  |       |  +--------------------------+  | |
|  |  +---------------------+  |       |  |   Async Data Providers   |  | |
|  |                           |       |  | (Updates, InstalledApps) |  | |
|  +---------------------------+       |  +--------------------------+  | |
|              ^                       |                |               | |
|              |                       +----------------|----------------+ |
|              |                                        |                 |
|              v                                        v                 |
|  +---------------------------+       +--------------------------------+ |
|  |      Core Services        |       |         Service Layer          | |
|  |                           |       |                                | |
|  | +-----------------------+ |       | +------------------------------+ |
|  | |      Routing          | |       | |       WingetService          | |
|  | |      (go_router)      | |       | | - Execute winget commands    | |
|  | +-----------------------+ |       | | - Parse text/JSON output     | |
|  |                           |       | | - Handle process errors      | |
|  | +-----------------------+ |       | | - Manage icon fetching logic | |
|  | |      Theming          | |       | +------------------------------+ |
|  | +-----------------------+ |       |                                | |
|  |                           |       +--------------------------------+ |
|  +---------------------------+                        |                 |
|                                                       v                 |
|---------------------------------- OS Boundary -------------------------|
|                                                       |                 |
|                                          +--------------------------+   |
|                                          |   Windows Operating      |   |
|                                          |   System Environment     |   |
|                                          |                          |   |
|                                          |   +------------------+   |   |
|                                          |   |   winget.exe     |   |   |
|                                          |   | (Command-Line    |   |   |
|                                          |   |  Tool)           |   |   |
|                                          |   +------------------+   |   |
|                                          +--------------------------+   |
|                                                                         |
+-------------------------------------------------------------------------+
```

#### **Component Descriptions:**

*   **Presentation Layer:** The entire user interface, built with Flutter and the `fluent_ui` library. It is composed of stateless widgets that "watch" providers in the State Layer. Its sole responsibility is to display the current state and forward user events.
*   **State Layer:** The "brain" of the application, powered by `flutter_riverpod`. It contains providers that hold application state, business logic, and data fetched from the Service Layer. It is responsible for orchestrating state changes in response to user actions or service layer events.
*   **Service Layer:** A decoupled layer responsible for all external interactions.
    *   **`WingetService`:** The most critical service. It is the **only** component in the application authorized to interact with the `winget.exe` process via `dart:io`. It encapsulates all logic for command creation, execution, parsing, and error handling.
*   **Core Services:** Cross-cutting concerns like routing (`go_router`) and theming.
*   **OS Boundary:** A conceptual line separating Wingard from the underlying Windows OS. All interactions across this boundary are managed exclusively by the `WingetService`.

---

### 4. Key Architectural Patterns & Decisions

*   **Feature-First Architecture:** The codebase will be organized by feature (e.g., `updates`, `installed_apps`), not by layer type. This enhances modularity and makes the project easier to scale.
*   **Reactive UI (Provider Model):** The UI is a reactive function of the state held in Riverpod providers. This eliminates the need for manual state management in the UI (e.g., `setState`), leading to cleaner and more predictable code.
*   **Service Abstraction:** All interactions with the `winget` CLI are abstracted behind the `WingetService`. This allows the rest of the application to remain ignorant of the implementation details (e.g., parsing logic, command flags), making the system easier to test and maintain.
*   **Elevated Execution Model:** The application is configured to require administrator privileges on launch. This simplifies the command execution logic by removing the need for on-demand UAC elevation but places a UAC prompt at the entry point of the application.
*   **Dynamic State Updates:** The architecture will support dynamic, real-time updates to the UI state. When a background task (e.g., an update) completes, the `ActivityPanel`'s state notifier will trigger a refresh of the relevant data providers, causing the main UI to update automatically without user intervention.
*   **Code Generation:** `riverpod_generator` and `freezed` will be used extensively. This reduces boilerplate, minimizes human error, and ensures type safety across the state and model layers.

---

### 5. Technology Stack

*   **Language:** Dart (latest stable version)
*   **Framework:** Flutter (for Windows Desktop)
*   **UI Library:** `fluent_ui` (primary), `flutter_acrylic` (for native materials)
*   **State Management:** `flutter_riverpod` (with `riverpod_generator`)
*   **Data Modeling:** `freezed`
*   **Routing:** `go_router`
*   **Image Handling:** `cached_network_image`, `shimmer`
*   **Internationalization:** `intl`
*   **Window Management:** `window_manager`
*   **Packaging:** `msix` (for creating the final distributable)

---

### 6. Data Flow Example: "Update All"

1.  The user clicks the "Update All" button in the `UpdatesPage` UI.
2.  The UI calls a method on the `activityLogProvider`'s notifier.
3.  The `activityLogProvider` adds all pending updates to its state list as `Task` objects with a status of `queued`.
4.  A background task runner, listening to this provider, begins processing the queue one by one.
5.  For each task, it invokes the `WingetService` to execute the appropriate `winget upgrade <packageId>` command.
6.  The `WingetService` spawns the `winget.exe` process, captures its `stdout` and `stderr` streams, and updates the task's log in real-time.
7.  Upon successful completion of a task, the task runner updates its status to `success` and then calls `ref.invalidate(updatesProvider)` to force a refresh of the main updates list.
8.  The UI, watching the `updatesProvider` and `activityLogProvider`, rebuilds automatically to show the live progress in the `ActivityPanel` and to remove the completed item from the Updates list.

This architecture ensures a robust, decoupled, and highly responsive system. It is now ready for the next phase of detailed product requirement definition.