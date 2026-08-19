# Testing Philosophy & Rules

This project enforces a strict, rigorous testing protocol. As an AI assistant working on this codebase, you **MUST** adhere to the following rules:

## 0. Tests Must Be Written Alongside Every Feature (MOST IMPORTANT RULE)

**Writing tests is not optional and is not a separate phase that comes after implementation.**
Every feature, migration, bug fix, or content change must include the corresponding test
as part of the SAME commit. If there is no test, the feature is not done.

**Lesson learned:** The entire Nitya Puja migration was completed without tests because
this rule was not enforced. Tests were only added retrospectively. This must never happen again.

Ask yourself before every commit:
- "If I accidentally break this feature next week, which test would catch it?"
- If you cannot answer that question, you are missing a test. Write it now.

## 1. Mandatory Pre-Flight Checks
- You are acting as your own "testing sub-agent".
- **Rule:** After every single functional code or data layer change, you MUST run the relevant test suite (e.g., `flutter test` or specific integration tests) before concluding your turn and handing control back to the user.
- Do not ask the user to verify functionality if you haven't run the tests yourself to prove it works.

## 2. Content Testing (Data Layer)
- **Rule:** Do not tie tests directly to specific language content strings for UI testing. UI tests should be language-agnostic.
- **Exception (Sanitization):** We use strict sanitization tests in the data layer (e.g., `test/data/content/`) to prevent regressions in the JSON files. These tests *must* assert exact string content and block lengths to ensure the legacy texts (like Kannada slokas) are not accidentally corrupted or dropped.

## 3. Widget Testing
- **Rule:** Ensure UI widgets (like `RitualBlockWidget` and `RitualScreen`) correctly parse the underlying data models. 
- Mock the data layer using the `rootBundle` to verify widgets render the correct types (`heading`, `instruction`, `verse_vedic`) without relying on the physical filesystem.

## 4. Integration Testing
- **Rule:** E2E integration tests (e.g., `integration_test/app_test.dart`) are mandatory for verifying the holistic user flow (e.g., swiping through a full ritual).
- Always ensure `TestWidgetsFlutterBinding.ensureInitialized()` is called to correctly simulate the `rootBundle` asset loading environment on native desktop/mobile targets.

**Failure is not an option.** If you break a test while implementing a feature, you must debug and fix the test (or the implementation) *before* returning to the user.
