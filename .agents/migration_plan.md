# Flutter Migration Implementation Plan

This document outlines the step-by-step plan to migrate the legacy React Native applications to two separate Flutter projects. We will completely migrate the Rig Sandhya app first, followed by the Nitya Pooja app.

> [!IMPORTANT]
> **Verification Protocol:** An agent MUST verify the successful completion of each step before proceeding to the next step. Do not execute multiple steps simultaneously.

---

# PART A: Rig Sandhya Migration

## Phase 1: Rig Sandhya - Project Initialization
### Step 0: Environment Check
- **Action:** Verify that `flutter` and `dart` CLI tools are installed and accessible in the path.
- **Verification:** Run `flutter --version` and `flutter doctor`. Ensure the Flutter SDK is installed and configured correctly.
### Step 1: Scaffold Flutter Project
- **Action:** Use `flutter create flutter_rig_sandhya` in the root of the workspace.
- **Verification:** Run `flutter analyze`. Ensure no errors. Verify `android/app/build.gradle` targets SDK 34+.
### Step 2: Configure Dependencies and Assets
- **Action:** Add packages to `pubspec.yaml`. Create `assets/fonts/` and `assets/i18n/kn/` directories. Copy `Ganapati.ttf` into the project and declare it.
- **Verification:** Run `flutter pub get`. Ensure the font is correctly registered.

## Phase 2: Rig Sandhya - Data Extraction
### Step 3: Extract Reusable Components (JSON)
- **Action:** Create individual JSON files for common verses in `assets/i18n/kn/components/` (e.g., `aachamaneya.json`). Structure with block types (`heading`, `verse_vedic`).
- **Verification:** Write a Dart unit test to parse a component file.
### Step 4: Extract Ritual Flows (JSON)
- **Action:** Create ritual composition files (e.g., `pratah_sandhya.json`) referencing the components.
- **Verification:** Write a Dart unit test in `RitualRepository` that successfully loads a ritual and resolves all references.

## Phase 3: Rig Sandhya - UI Implementation
### Step 5: Build Core Widgets
- **Action:** Implement reusable UI in `lib/ui/shared/`. Implement a text renderer applying the `Ganapati` font for `verse_vedic`.
- **Verification:** Write a Flutter Widget Test asserting the resulting `Text` widget has `fontFamily: 'Ganapati'`.
### Step 6: Implement Index Screen
- **Action:** Build `home_screen.dart` with a `ListView`.
- **Verification:** Run on emulator. Verify list renders correctly.
### Step 7: Implement Swiper Screen
- **Action:** Build `ritual_screen.dart` using `PageView` and `SingleChildScrollView`.
- **Verification:** Run on emulator. Verify horizontal swipe and vertical scroll.

## Phase 4: Rig Sandhya - Full Testing
### Step 8: Integration Testing
- **Action:** Write E2E tests using `integration_test` to navigate from home to ritual end.
- **Verification:** Run `flutter test integration_test/app_test.dart`.

## Phase 5: Rig Sandhya - Build Automation
### Step 9: Configure Release Signing
- **Action:** Configure `android/app/build.gradle` for signing.
- **Verification:** Run `flutter build appbundle --release`.

---

# PART B: Nitya Pooja Migration

## Phase 6: Nitya Pooja - Project Initialization
### Step 10: Scaffold Flutter Project
- **Action:** Use `flutter create flutter_nitya_pooja`.
- **Verification:** Run `flutter analyze`. Verify SDK 34+.
### Step 11: Configure Dependencies and Assets
- **Action:** Add packages, copy `Ganapati.ttf`, and declare it in `pubspec.yaml`.
- **Verification:** Run `flutter pub get`.

## Phase 7: Nitya Pooja - Data Extraction
### Step 12: Extract Reusable Components (JSON)
- **Action:** Create component JSON files specific to Nitya Pooja in `assets/i18n/kn/components/`.
- **Verification:** Dart unit test parsing passes.
### Step 13: Extract Ritual Flows (JSON)
- **Action:** Create Nitya Pooja specific ritual composition files.
- **Verification:** Dart unit test in `RitualRepository` passes.

## Phase 8: Nitya Pooja - UI Implementation
### Step 14: Build Core Widgets
- **Action:** Implement core UI widgets and Vedic text renderer.
- **Verification:** Flutter Widget Test passes for `Ganapati` font.
### Step 15: Implement Index Screen
- **Action:** Build Nitya Pooja specific `home_screen.dart`.
- **Verification:** Run on emulator. Verify list renders.
### Step 16: Implement Swiper Screen
- **Action:** Build Nitya Pooja specific `ritual_screen.dart`.
- **Verification:** Run on emulator. Verify swipe and scroll.

## Phase 9: Nitya Pooja - Full Testing
### Step 17: Integration Testing
- **Action:** Write E2E tests for Nitya Pooja flows.
- **Verification:** Run `flutter test integration_test/app_test.dart`.

## Phase 10: Nitya Pooja - Build Automation
### Step 18: Configure Release Signing
- **Action:** Configure `android/app/build.gradle` for signing.
- **Verification:** Run `flutter build appbundle --release`.
