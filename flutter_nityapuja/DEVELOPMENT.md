# Nitya Puja - Development Guide

## Project Overview
Nitya Puja is a Flutter application that provides beautifully formatted texts for everyday Vedic rituals. It shares a highly similar architecture to Rigveda Sandhyavandana but is maintained as a separate application.

## CI/CD Pipeline
The CI/CD pipeline is fully automated using GitHub Actions.

### Workflows
1. **CI (`nityapuja_ci.yml`)**: Triggered on every push and pull request to the `flutter_nityapuja/` directory.
   - Runs Flutter format checks.
   - Runs `flutter analyze` for linting.
   - Executes Widget tests (`flutter test`).
   - Executes Integration tests on a headless Android emulator.

2. **CD (`nityapuja_cd.yml`)**: Triggered manually via `workflow_dispatch` or by pushing a tag matching `nityapuja-v*`.
   - Automatically bumps the version in `pubspec.yaml` (major, minor, patch, or custom).
   - Commits the version bump and creates a GitHub release tag.
   - Decodes the Base64 Keystore from GitHub Secrets and injects it into `key.properties`.
   - Builds a signed Android App Bundle (`.aab`).
   - Uploads the `.aab` to the Google Play Console Internal Track using `r0adkll/upload-google-play@v1`.

### Secrets Required
The CD pipeline relies on the following GitHub Repository Secrets:
- `KEYSTORE_JKS`: Base64 encoded string of `mankalmadhu_keystore.jks`.
- `KEYSTORE_PASSWORD`, `KEY_ALIAS`, `KEY_PASSWORD`: Passwords for the keystore.
- `PLAY_STORE_SERVICE_ACCOUNT_JSON`: The service account JSON to authenticate with Google Play Console.

### Signing Key History (Important)
Nitya Puja uses `mankalmadhu_keystore.jks` as its **Deployment Key** (App Signing Key). Because Google Play enforces that the Upload Key must be different from the App Signing Key, both Rig Sandhya and Nitya Puja share the *exact same* Upload Key signature (`F7:96...`) which was historically linked to `mankalmadhu_keystore.jks`. 

The `build.gradle.kts` file is specifically configured to load `key.properties` and sign the `release` build using this keystore.

## Testing & Quality
### Integration Tests
Integration tests are located in `integration_test/app_test.dart`.
**Critical Note**: `GoogleFonts.config.allowRuntimeFetching = true;` MUST be explicitly set at the top of the integration tests. By default, `flutter_test` blocks HTTP requests. Since the app relies on dynamic Google Fonts (like Tiro Kannada), tests will instantly crash on boot without this override.

### Code Quality
- All code must pass `flutter analyze`. Ensure that no deprecated members or missing `super.key` parameters are introduced.
- Run `flutter format .` before pushing.

## Local Development
To build the release version locally, you must have the `key.properties` file in your `android/` directory:
```properties
storePassword=<password>
keyPassword=<password>
keyAlias=mankalmadhukey
storeFile=mankalmadhu_keystore.jks
```
Place `mankalmadhu_keystore.jks` in the `android/app/` directory.

Run:
`flutter run -d macos` (for local desktop testing)
`flutter build appbundle --release` (for Android Play Store builds)
