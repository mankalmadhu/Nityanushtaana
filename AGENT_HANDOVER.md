# Nityanushtaana Repository Knowledge Base & Agent Handover

This repository contains two modern, production-ready **Flutter** applications dedicated to daily Vedic rituals: **Rig Sandhya** and **Nitya Puja**. 
*(Note: The legacy React Native folders `NityaPooja` and `RigSandhya` still exist in the repo for historical reference, but all active development is in the `flutter_` directories).*

## 1. Architecture & Stack
- **Framework:** Flutter (Channel Stable)
- **State Management:** Provider
- **Local Storage:** `shared_preferences` (for user settings like font choice, language, and theme)
- **Styling:** Custom theming with Google Fonts support.
- **Accessibility:** UI components have recently been modernized to use `RadioGroup` and standard Flutter forms to comply with strict `flutter analyze` accessibility checks.

## 2. Active Projects

### `flutter_rig_sandhya`
- **Purpose:** Complete guide to Rigveda Sandhyavandana.
- **Data Layer:** Heavily relies on JSON component blocks (e.g., `assets/i18n/kn/components/`).
- **Testing:** Comprehensive automated tests exist to parse these JSON files and ensure content integrity (e.g., verifying `blocks.length` and checking for corrupted Unicode). If you modify JSON content, you MUST run tests in `flutter_rig_sandhya/test/data/content/` and update the block length assertions if you add/remove content.

### `flutter_nityapuja`
- **Purpose:** Step-by-step procedures for daily deity worship.
- **Data Layer:** Follows a nearly identical JSON architecture to Rig Sandhya.

## 3. CI/CD & Deployment
- **GitHub Actions:**
  - **CI:** Tests and `flutter analyze` run on every PR/push to master (`rig_sandhya_ci.yml` and `nityapuja_ci.yml`). *Warning: The CI treats `info` level analyzer warnings as build failures.*
  - **CD (Play Store):** Automated deployment to Google Play internal tracks when a tag is pushed (`rig_sandhya_cd.yml` and `nityapuja_cd.yml`).
  - **Web Deploy:** A manual trigger workflow (`deploy_web.yml`) compiles both apps to Flutter Web and pushes them, along with a custom root landing page (`github_pages_landing/index.html`), to the `gh-pages` branch.

## 4. Pending / Future Tasks for the Next Agent
- **Localization (Sanskrit & Telugu):** The user wants to expand the apps to support Sanskrit (`sa`) and Telugu (`te`). 
  - The language switcher UI is partially in place.
  - Google Fonts `tiroDevanagariSanskrit` and `tiroTelugu` are already integrated for these locales.
  - The next major step is to migrate/translate the JSON components into these languages and hook up the language switcher in the Home Screen's Settings Drawer.
- **Dependency Bumps:** Dependencies were recently bumped to their latest major versions. Always run integration tests if you touch `pubspec.yaml`.
