## Deployment & Release Plan
**Project:** Wingard

### 1. Introduction

#### 1.1. Purpose
This document outlines the strategy and procedures for building, packaging, and distributing the V1 release of the Wingard application. Its goal is to ensure a smooth, repeatable, and secure release process that is aligned with the project's open-source nature and its "no-cost" certificate constraint.

#### 1.2. Core Strategy: Transparency over Trust
Given the absence of a commercial Code Signing Certificate, this plan prioritizes **user education and transparency** as the primary method for overcoming the initial installation friction caused by Windows SmartScreen. The technical superiority of the MSIX packaging format—specifically its robust auto-update capabilities—is deemed more valuable than pursuing alternative formats that do not solve the core trust issue.

---

### 2. Release Artifacts & Packaging

#### 2.1. Build Process
*   **Command:** The application will be built in release mode using `flutter build windows`.
*   **Environment:** All official releases will be generated via an automated GitHub Actions workflow running on a `windows-latest` virtual machine to ensure consistency.

#### 2.2. Packaging Format: MSIX
*   **Technology:** **MSIX** will be the exclusive packaging format for Wingard.
*   **Rationale:** This choice provides a clean, containerized installation and uninstallation process, and most importantly, grants the application access to the native Windows auto-update framework, a critical feature for an app manager.
*   **Tooling:** The `msix` Flutter package will be used to automate the creation of the MSIX installer.

#### 2.3. Code Signing: Self-Signed Certificate
*   **Certificate Type:** A project-specific **self-signed certificate**. This certificate will be generated once and its value stored securely.
*   **Security:** The certificate file (`.pfx`) and its password will be stored as encrypted, Base64-encoded secrets in the GitHub repository's Actions settings. They will **never** be committed to the codebase.
*   **Process:** The automated GitHub Actions workflow will decode the self-signed certificate during the build process and use it to sign the MSIX package. This ensures every release is signed with a consistent, albeit untrusted, identity.

---

### 3. Versioning Strategy

*   **Scheme:** The project will adhere strictly to **Semantic Versioning (SemVer) 2.0.0** (`MAJOR.MINOR.PATCH`).
*   **Initial Release:** The first public release will be version **`1.0.0`**.
*   **Management:** The version number will be managed centrally in `pubspec.yaml` and will be used to automatically name the release artifacts.

---

### 4. Distribution & User Communication Strategy

#### 4.1. Primary Channel: GitHub Releases
*   **Method:** Each new version will be published as a "Release" on the project's official GitHub repository.
*   **Release Assets:**
    *   The signed `.msix` installer file.
    *   A checksum file (`SHA256SUMS.txt`) to allow users to verify download integrity.

#### 4.2. Mandatory User Guidance
The most critical part of the release is user communication. Every GitHub Release description **must** contain a prominent "Installation Instructions" section at the top. This section will include:

1.  **An Explicit Warning:** A clear, bolded statement that Windows Defender SmartScreen will show a warning because the application is from a new, independent developer.
2.  **A Visual Guide:** A short, animated GIF embedded directly in the release notes that visually demonstrates the required click-path: **"More info" -> "Run anyway"**.
3.  **Reassurance:** A brief sentence reassuring the user that this is expected behavior and that the app is safe to install, inviting them to check the checksums or browse the source code to verify.

The project's main `README.md` file will also feature this same installation guide.

---

### 5. Automated Release Workflow (GitHub Actions)

*   **Trigger:** The workflow will be triggered manually via `workflow_dispatch`, requiring a developer to input the `version` tag for the release.
*   **Process:**
    1.  **Setup:** The workflow checks out the code and sets up the Flutter environment on a `windows-latest` runner.
    2.  **Decode Certificate:** The self-signed certificate is decoded from GitHub Secrets and saved to a temporary file on the runner.
    3.  **Build:** `flutter build windows --release` is executed.
    4.  **Package & Sign:** `msix:create` is run. The tool is configured to use the decoded self-signed certificate and password to sign the MSIX package.
    5.  **Create Draft Release:** The workflow automatically creates a new **draft** release on GitHub, tagged with the provided version.
    6.  **Upload Artifacts:** The signed `.msix` file and its checksum file are automatically uploaded as assets to the draft release.
*   **Final Step (Manual):** A developer must manually review the draft release, paste in the detailed, hand-written release notes (including the mandatory installation guide), and then **publish** the release, making it public.