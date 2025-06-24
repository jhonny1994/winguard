## UI/UX Design Specification
**Project:** Wingard

### 1. Introduction & Design Philosophy

This document provides a detailed specification for the User Interface (UI) and User Experience (UX) of the Wingard application. Its purpose is to serve as a single source of truth for all visual and interactive design, ensuring a consistent, high-quality, and on-brand user interface.

The design philosophy is built on three pillars:

*   **Clarity:** The UI must be intuitive and immediately understandable. Information hierarchy will be used to guide the user's attention to what matters most.
*   **Confidence:** The application will provide constant, clear feedback for all states and actions, building user trust and ensuring they always feel in control.
*   **Native Feel:** Wingard must feel like a natural extension of the Windows 11 operating system. This is achieved by adhering strictly to the Fluent Design language and integrating native platform features.

### 2. Color Palette: "Wingard Slate & Bronze"

This is a professional and elegant theme combining cool slate grays with a warm, trendy bronze accent. All colors are chosen to be accessible and comfortable for long-term use in both light and dark themes.

| Role                | Color Name      | Hex (Dark Theme)     | Hex (Light Theme)    | Description                                                                   |
| :------------------ | :-------------- | :------------------- | :------------------- | :---------------------------------------------------------------------------- |
| **Accent**          | Bronze Accent   | `#D88A53`            | `#D88A53`            | Primary color for buttons, highlights, focus indicators, and key status text. |
| **Background**      | Slate Deep/Soft | `#1F2329`            | `#F9F9F9`            | Main window background and Navigation Pane color. Tints the Mica effect.      |
| **Surface**         | Slate Raised    | `#2B2F36`            | `#FFFFFF`            | Color for cards, dialogs, and other elevated surfaces to create depth.        |
| **Primary Text**    | Off-White       | `#F0F0F0`            | `#212121`            | Primary text color for maximum readability.                                   |
| **Secondary Text**  | Muted Gray      | `#A0A0A0`            | `#606060`            | For secondary information like version numbers and timestamps.                |
| **Status: Success** | Fluent Green    | `Colors.green`       | `Colors.green`       | Used for success checkmarks and positive feedback.                            |
| **Status: Error**   | Fluent Red      | `Colors.red.primary` | `Colors.red.primary` | Used for error icons and critical failure text.                               |

### 3. Typography & Layout

*   **Font:** Default Fluent UI font (Segoe UI Variable).
*   **Scale:** We will adhere to the `fluent_ui` default type ramp for consistency.
    *   **Page Titles:** `Typography.display` (e.g., "Updates").
    *   **Section Headers:** `Typography.titleLarge` (e.g., "Appearance" in Settings).
    *   **Card Titles:** `Typography.bodyLarge` (e.g., Package Name).
    *   **Body Text:** `Typography.body` (e.g., descriptions).
    *   **Subtitles/Captions:** `Typography.caption` (e.g., version numbers).
*   **Layout & Spacing:** A base unit of **8px** will be used for all margins, padding, and gaps to ensure visual rhythm. Standard padding for page content will be `16px`.

### 4. Iconography

*   **Icon Pack:** **`FluentIcons`** (built-in to the `fluent_ui` package).
*   **Rationale:** The exclusive use of the built-in icon pack is a deliberate choice to guarantee perfect visual consistency with the rest of the UI controls and to avoid adding unnecessary dependencies.

### 5. Reusable Component Specification

These are the core building blocks of the Wingard UI. Adherence to these specifications is critical for consistency.

#### **5.1. `PackageListCard`**
*   **Purpose:** The universal widget for displaying a package in any list (`Updates`, `Installed Apps`).
*   **Structure:** A `fluent_ui` `ListTile`. The entire tile has an `onTap` handler that navigates to the package's detail page.
*   **Leading (Icon):** A `SizedBox` (40x40px) containing a `CachedNetworkImage` widget.
    *   **Placeholder:** The `shimmer` package will be used to display a shimmering gray circle effect while the icon is being downloaded.
    *   **Error State:** If the image fails to load, it will gracefully fall back to the `GeneratedIcon` widget.
*   **Title:** The package name, set to use `TextOverflow.ellipsis`.
*   **Subtitle (Context-Aware):**
    *   **Updates View:** `RichText` displaying `Current Version -> **New Version**` to highlight the update.
    *   **Installed Apps View:** Simple `Text` showing the installed version number.
*   **Trailing:** A `Row` of action buttons (`FilledButton` for primary actions, `Button` for secondary).

#### **5.2. `StatefulContentArea`**
*   **Purpose:** A wrapper widget that standardizes the display of asynchronous data across all main pages.
*   **Logic:** It accepts a Riverpod `AsyncValue` and renders one of four distinct states:
    *   **Loading State:** Displays a `ListView` of 5-6 `PackageListCard`s in a `Shimmer` effect state. This provides a high-quality skeleton loading experience.
    *   **Empty State:** Displays a large `FluentIcon` and a clear, friendly message (e.g., "✅ You're all up to date!").
    *   **Error State:** Displays a prominent `FluentIcons.error_circle`, an explanatory error message, and a "Retry" button.
    *   **Content State:** Renders the actual `ListView` of `PackageListCard`s.

#### **5.3. `ActivityPanel`**
*   **Purpose:** A non-intrusive, persistent feedback mechanism docked at the bottom of the window.
*   **Collapsed State (Default):** A thin bar (30px height). Its background color reflects the current state (Bronze for running, Green for success, Red for failure). It displays a summary text:
    *   *Running:* "⏳ Updating PowerToys (2/5)..."
    *   *Success:* "✅ All tasks completed successfully."
    *   *Failure:* "❌ 1 task failed. Click to view."
*   **Expanded State:** On click, the panel animates up to a height of ~200px. It contains a scrollable list of recent tasks. Failed tasks include a "View Log" button that opens a `ContentDialog` with the raw error text.

#### **5.4. `GeneratedIcon`**
*   **Purpose:** The Tier 3 fallback for the icon fetching service.
*   **Structure:** A `Container` with a circular shape. The background color is determined by a hash of the package name, ensuring a consistent color for each app.
*   **Content:** A centered `Text` widget displaying the first letter of the package name in a large, bold, off-white font.