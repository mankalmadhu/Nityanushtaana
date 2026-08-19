# Mandatory Pre-Commit Workflow

This rule applies to **every commit** across all Flutter apps in this repository
(`flutter_nityapuja`, `flutter_rig_sandhya`). As an AI agent, you **MUST** execute
the following steps in order and present the results to the user before committing
or pushing **any** code change. No exceptions.

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
