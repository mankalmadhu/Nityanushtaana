# Mandatory Pre-Commit Workflow

This rule applies to **every commit** across all Flutter apps in this repository
(`flutter_nityapuja`, `flutter_rig_sandhya`). As an AI agent, you **MUST** follow
all steps below for every code change. No exceptions.

---

## Phase 0 — Write Tests First (MANDATORY before implementation)

This is the most critical rule and the one most commonly skipped. **You must write
or update tests BEFORE or ALONGSIDE every change you make.** This is non-negotiable.

### What requires a new test?
| Change Type | Required Test |
|---|---|
| New JSON component file added | A new `test/data/content/kn/components/<name>_test.dart` |
| New Dart model or class | A unit test in `test/core/` or `test/data/` |
| New UI widget | A widget test in `test/ui/` |
| New screen or navigation flow | A widget test covering the screen |
| Data migration / content edit | Update/add content sanitization tests |
| Bug fix | A regression test that would have caught the bug |

### Red flags — stop and write tests if you notice:
- You are about to commit a new `.dart` or `.json` file with no corresponding test file.
- The number of test files has not increased after adding a new feature.
- You cannot point to a specific test that would have caught a regression in your change.

### How to verify coverage before committing:
Count the test files before and after your change:
```bash
find test/ -name '*_test.dart' | wc -l
```
The count **must increase** for any non-trivial feature addition.

---

## The 3-Step Pre-Commit Checklist

Run these commands from the relevant app directory (e.g., `flutter_nityapuja/`):

### Step 1 — Format
```bash
dart format .
```
- All `.dart` files must be auto-formatted.
- CI enforces `dart format --set-exit-if-changed .` which will **fail the build** if
  any file is not properly formatted before push.

### Step 2 — Analyze
```bash
flutter analyze
```
- Output must end with: `No issues found!`
- Fix **all** lint warnings and errors before proceeding. No suppression of warnings
  unless there is an explicit, documented reason.

### Step 3 — Test
```bash
flutter test --reporter=compact
```
- **All tests must pass** (`0 failures`).
- If any test fails, debug and fix the root cause before committing.
- Do NOT suppress or delete failing tests to make the suite pass.

---

## Summary Report Before Committing

After running all three steps, present a brief summary to the user in this format
before asking for commit approval:

```
✅ Format  — X files changed (or "No changes needed")
✅ Analyze — No issues found (ran in Xs)
✅ Tests   — N tests passed in Xs
```

Only after confirming all three are green may you run `git commit && git push`.

---

## Why This Matters

- The CI pipeline (`nityapuja_ci.yml`, `rig_sandhya_ci.yml`) enforces all three
  checks on every push. Skipping them locally wastes GitHub Actions minutes and
  blocks the entire pipeline.
- `dart format` failures are especially easy to miss since the code still *runs*
  locally — but CI will reject the commit.
- The test suite includes a **Kannada digit zero sanitization test** that guards
  against accidental corruption of sacred text content in the JSON assets. This
  must always be green before shipping.
