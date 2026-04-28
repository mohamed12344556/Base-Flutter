# Base Flutter Template – Conversion Tasks

> Goal: Convert this project (originally `eol_app` / `EOLApp`) into a clean, reusable Flutter **base template** that can be cloned and renamed for any new project.
>
> **Audience:** A cheap LLM that will execute the tasks below mechanically.
> **Style:** Each task is self-contained, ordered, deterministic, and includes exact strings to find/replace, file paths, and acceptance criteria. Do NOT improvise. Do NOT add features. Only do what each task says.

---

## Global Rules (read before starting)

1. **Project rename:** the new package name is `base_flutter`. The new app class name is `BaseApp`. The new app display name is `Base App`.
2. **Never invent new files.** Only edit / rename / delete files that this document mentions.
3. **Preserve directory structure** unless a task explicitly says to move/rename a folder.
4. After every task, run:
   - `flutter pub get`
   - `flutter analyze`
   Fix only errors caused by the task itself. Do NOT fix unrelated lints.
5. Use **exact** find/replace pairs. Case matters.
6. If a feature folder is listed under "Delete", remove the folder and every reference to it (imports, DI registrations, routes, exports, BlocProviders).
7. Do NOT touch `assets/` binary files. You may edit text files inside `assets/lang/`.
8. All replacements are **whole-token** unless stated otherwise (don't replace substrings inside unrelated identifiers).
 
---

## Task 1 — Rename package `eol_app` → `base_flutter`

**Find/Replace across the entire repo (all `*.dart`, `*.yaml`, `*.md`, `*.json`, `*.gradle`, `*.gradle.kts`, `*.plist`, `*.xml`, `*.kt`, `*.swift`):**

| Find | Replace |
|---|---|
| `eol_app` | `base_flutter` |
| `package:eol_app/` | `package:base_flutter/` |
| `name: eol_app` | `name: base_flutter` |

**Specific files to verify after replace:**
- `pubspec.yaml` → `name:` field must be `base_flutter`.
- `pubspec.lock` → delete it; it will be regenerated.
- `analysis_options.yaml` → no change unless it references the old name.
- `android/app/build.gradle` or `build.gradle.kts` → `applicationId` and `namespace` rename (see Task 3).
- `ios/Runner.xcodeproj/project.pbxproj` → bundle id rename (see Task 3).

**Acceptance:** `grep -ri "eol_app" .` returns zero hits inside source files (excluding `build/`, `.dart_tool/`, `pubspec.lock`).

---

## Task 2 — Rename app class `EOLApp` → `BaseApp` and file `base_app.dart` stays

The file `lib/base_app.dart` is already named correctly. Only rename the **class** inside.

**Find/Replace (whole-token, all `*.dart`):**

| Find | Replace |
|---|---|
| `EOLApp` | `BaseApp` |
| `_EOLAppState` | `_BaseAppState` |
| `State<EOLApp>` | `State<BaseApp>` |

**Acceptance:** `grep -r "EOLApp" lib/` returns zero hits.

---

## Task 3 — Rename Android/iOS identifiers and display name

### 3a. Android
File: `android/app/build.gradle` (or `build.gradle.kts`)
- Replace any `applicationId "com.example.eol_app"` (or similar containing `eol`) with `applicationId "com.example.base_flutter"`.
- Replace `namespace "com.example.eol_app"` (if present) with `namespace "com.example.base_flutter"`.

File: `android/app/src/main/AndroidManifest.xml`
- Replace `android:label="EOL"` (or any `eol`-related label) with `android:label="Base App"`.

File: `android/app/src/main/kotlin/...` directory
- If there is a folder path like `kotlin/com/example/eol_app/`, rename `eol_app` → `base_flutter`.
- Inside the `MainActivity.kt` file, update the `package com.example.eol_app` line to `package com.example.base_flutter`.

### 3b. iOS
File: `ios/Runner/Info.plist`
- `CFBundleName` → `Base App`
- `CFBundleDisplayName` → `Base App`

File: `ios/Runner.xcodeproj/project.pbxproj`
- Replace any `PRODUCT_BUNDLE_IDENTIFIER = com.example.eolApp;` (or similar) with `PRODUCT_BUNDLE_IDENTIFIER = com.example.baseFlutter;`.

**Acceptance:** A clean `flutter build apk --debug` succeeds (don't actually run if no SDK; only verify identifiers replaced).

---

## Task 4 — Delete app-specific (non-reusable) features

These features are **specific to the EOL project** and are NOT part of a generic base. Delete each folder entirely:

- `lib/features/community/`
- `lib/features/courses/` (if exists)
- `lib/features/roadmap/` (if exists)
- `lib/features/plans/` (if exists – the paid plans / subscription feature)
- `lib/features/certificates/` (if exists)
- Any other `lib/features/*` that is not in the **Keep list** below.

**Keep list (these are generic and stay):**
- `lib/features/auth/`
- `lib/features/home/` (only if it's a generic shell — see Task 5)
- `lib/features/profile/` (only the generic profile shell — see Task 5)
- `lib/features/notification/` (generic)
- `lib/features/onboarding/` (generic)
- `lib/features/splash/` (generic)
- `lib/features/settings/` (generic, if exists)

After deletion, also delete:
- All imports referencing the deleted folders in `lib/base_app.dart`, `lib/core/di/dependency_injection.dart`, `lib/core/utils/bloc_setup.dart`, `lib/core/routes/app_router.dart`, `lib/core/routes/routes.dart`, and `lib/core/core.dart`.
- All `BlocProvider` / `sl<...>()` registrations for the deleted feature cubits/repos.
- All routes (`AppRoutes.<deleted>`) and their `case` arms in the router.

**Acceptance:** `flutter analyze` shows no "URI doesn't exist" errors.

---

## Task 5 — Strip app-specific code out of kept features

Inside the kept features, remove anything tied to the EOL domain:

### 5a. `lib/features/home/`
- Replace any course/roadmap/community widgets in the home view with a simple `Scaffold` containing `AppBar(title: Text('Home'))` and a centered `Text('Welcome')`.
- Keep `HomeCubit` only if it has a generic `loadInitialData()`-style method. Otherwise reduce it to an empty cubit emitting `HomeInitial` / `HomeLoaded`.

### 5b. `lib/features/profile/`
- Delete `plans/` sub-folder entirely (it's a subscription feature).
- Keep only: profile view, profile cubit, basic user info display, logout button, language switcher, theme switcher.

### 5c. `lib/base_app.dart`
- Remove the import and `BlocProvider` for `PlansCubit`.
- Remove `_handlePaymentCallback` method entirely.
- Remove `DeepLinkingService().registerPaymentCallback(...)` block; keep the deep-linking service initialization but make the callback handler a no-op TODO comment: `// TODO: register deep-link callbacks for your project`.
- In `_handleNotificationNavigation`, replace the entire `switch (type)` with:
  ```dart
  switch (type) {
    case 'notification':
      Navigator.pushNamed(context, AppRoutes.notificationsView);
      break;
    default:
      Navigator.pushNamed(context, AppRoutes.notificationsView);
  }
  ```

**Acceptance:** No reference to `course`, `community`, `plans`, `roadmap`, `certificate`, `payment`, `invoice` remains in `lib/`.

---

## Task 6 — Generic strings (replace EOL-specific copy)

Search **all `*.dart`** files and `assets/lang/*.json` (or `*.arb`) for these tokens (case-insensitive whole word) and replace:

| Find | Replace |
|---|---|
| `EOL` | `Base` |
| `eol` (when appearing as a brand/literal, NOT as part of `eol_app` already handled) | `base` |
| `End of Line` | `Base App` |

If a string only makes sense in the EOL domain (e.g., "Welcome to EOL Academy"), replace it with a neutral version ("Welcome").

**Files commonly affected:**
- `assets/lang/ar.json` / `en.json`
- `lib/generated/l10n.dart` (regenerated — see Task 11)
- `lib/core/constants/key_strings.dart`
- `lib/core/constants/constants.dart`

**Acceptance:** `grep -ri "eol" lib/ assets/lang/` returns zero hits (case-insensitive).

---

## Task 7 — Clean DI / bloc setup

File: `lib/core/di/dependency_injection.dart`
- Remove every registration whose type comes from a deleted feature (Task 4).
- Keep registrations for: `ApiService`, `DioFactory`, `SharedPrefHelper`, `AuthCubit`, `AuthRepository`, `HomeCubit`, `ProfileCubit`, `NotificationCubit`, `CrashReportingService`, `RemoteConfigService`, `ColorThemeCubit`, `InactivityLockService`, `BiometricGuard`, `DeepLinkingService`, `NotificationService`, `TokenManager`, `GoogleSignInService`.

File: `lib/core/utils/bloc_setup.dart`
- Same cleanup.

**Acceptance:** File compiles. No `sl<DeletedThing>()` reference anywhere.

---

## Task 8 — Clean router

File: `lib/core/routes/routes.dart`
- Remove `static const` route names belonging to deleted features (course, community, roadmap, plans, certificate, payment).
- Keep: `splashView`, `onboardingView`, `loginView`, `signUpView`, `forgetPasswordView`, `resetPasswordView`, `otpView`, `hostView`, `homeView`, `profileSettingsView`, `notificationsView`, `settingsView`.

File: `lib/core/routes/app_router.dart`
- Remove the corresponding `case` arms.

**Acceptance:** `flutter analyze` clean.

---

## Task 9 — Clean exports in `lib/core/core.dart`

Remove any export line that points to a deleted file. Keep all generic exports.

**Acceptance:** File compiles standalone.

---

## Task 10 — Reset `pubspec.yaml`

Replace the **entire content** of `pubspec.yaml` with the following. Copy it verbatim — do not add or remove any field:

```yaml
name: base_flutter
description: "A reusable Flutter base template."
publish_to: "none"

version: 1.0.0+1

environment:
  sdk: ^3.9.2

dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter

  # Core / DI
  get_it: ^9.2.0
  bloc: ^9.2.0
  flutter_bloc: ^9.1.1
  hydrated_bloc: ^10.1.1
  equatable: ^2.0.8
  dartz: ^0.10.1

  # Networking
  dio: ^5.9.1
  dio_cache_interceptor: ^4.0.5
  retrofit: ^4.9.2
  pretty_dio_logger: ^1.4.0
  http: ^1.6.0
  connectivity_plus: ^7.0.0

  # Firebase
  firebase_core: ^4.4.0
  firebase_messaging: ^16.1.1
  firebase_crashlytics: ^5.1.0
  firebase_remote_config: ^6.1.4

  # Auth
  google_sign_in: ^7.2.0
  local_auth: ^2.3.0
  jwt_decoder: ^2.0.1
  flutter_secure_storage: ^10.0.0

  # Cache / Storage
  shared_preferences: ^2.5.4
  hive_ce: ^2.19.3
  hive_ce_flutter: ^2.3.4
  path_provider: ^2.1.5

  # UI
  flutter_screenutil: ^5.9.3
  flutter_svg: ^2.2.3
  cached_network_image: ^3.4.1
  lottie: ^3.3.2
  shimmer: ^3.0.0
  skeletonizer: ^2.1.3
  toastification: ^3.0.3
  smooth_page_indicator: ^2.0.1
  pinput: ^6.0.2
  flutter_animate: ^4.5.2
  animate_do: ^5.1.0
  badges: ^3.1.2
  awesome_snackbar_content: ^0.1.8
  cupertino_icons: ^1.0.8
  google_fonts: ^8.0.1

  # Media
  image_picker: ^1.2.1
  file_picker: ^10.3.10
  photo_view: ^0.15.0
  video_player: ^2.10.1
  chewie: ^1.13.0
  appinio_video_player: any
  audioplayers: ^6.5.1
  audio_waveforms: ^2.0.2
  record: ^6.2.0

  # Utilities
  intl: ^0.20.2
  intl_utils: ^2.8.14
  freezed_annotation: ^3.1.0
  json_annotation: ^4.10.0
  url_launcher: ^6.3.2
  share_plus: ^10.0.0
  package_info_plus: ^9.0.0
  permission_handler: ^12.0.1
  device_info_plus: ^12.3.0
  uuid: ^4.5.2
  path: ^1.9.1
  crypto: ^3.0.7
  timeago: ^3.7.1
  upgrader: ^13.1.0
  stack_trace: ^1.12.1
  smart_auth: ^3.2.0

  # Deep linking / notifications
  app_links: ^7.0.0
  flutter_local_notifications: ^20.1.0

  # SignalR
  signalr_netcore: ^1.4.4

  # Security
  freerasp: ^6.6.0
  screen_protector: ^1.5.0
  flutter_windowmanager_plus: ^1.0.1

  # WebView
  webview_flutter: ^4.13.1
  webview_flutter_android: ^4.10.11
  webview_flutter_wkwebview: ^3.23.6
  webview_flutter_platform_interface: ^2.14.0
  flutter_inappwebview: ^6.1.5

  # Misc
  easy_date_timeline: ^2.0.9
  timelines_plus: ^1.0.8
  wave_blob: ^1.0.5

dependency_overrides:
  record_linux: ^1.3.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0
  build_runner: ^2.11.1
  freezed: ^3.2.5
  json_serializable: ^6.12.0
  retrofit_generator: ^10.2.3
  hive_ce_generator: ^1.11.1
  bloc_test: ^10.0.0
  mocktail: ^1.0.5
  flutter_native_splash: ^2.4.7
  icons_launcher: ^3.0.3

icons_launcher:
  image_path: "assets/android12splash.png"
  platforms:
    android:
      enable: true
    ios:
      enable: true

flutter_intl:
  enabled: true
  main_locale: en
  arb_dir: lib/l10n
  output_dir: lib/generated

flutter:
  uses-material-design: true
  generate: true

  assets:
    - assets/audios/
    - assets/fonts/
    - assets/icons/
    - assets/images/
    - assets/splash/
    - assets/lottie/
    - assets/svgs/

  fonts:
    - family: Urbanist
      fonts:
        - asset: assets/fonts/Urbanist-Regular.ttf
        - asset: assets/fonts/Urbanist-Bold.ttf
          weight: 700
        - asset: assets/fonts/Urbanist-Light.ttf
          weight: 300
        - asset: assets/fonts/Urbanist-Medium.ttf
          weight: 500
        - asset: assets/fonts/Urbanist-SemiBold.ttf
          weight: 600
        - asset: assets/fonts/Urbanist-ExtraBold.ttf
          weight: 800
        - asset: assets/fonts/Urbanist-Black.ttf
          weight: 900
        - asset: assets/fonts/Urbanist-Italic.ttf
          style: italic
        - asset: assets/fonts/Urbanist-BoldItalic.ttf
          weight: 700
          style: italic
        - asset: assets/fonts/Urbanist-LightItalic.ttf
          weight: 300
          style: italic
        - asset: assets/fonts/Urbanist-MediumItalic.ttf
          weight: 500
          style: italic
        - asset: assets/fonts/Urbanist-SemiBoldItalic.ttf
          weight: 600
          style: italic
        - asset: assets/fonts/Urbanist-ExtraBoldItalic.ttf
          weight: 800
          style: italic
        - asset: assets/fonts/Urbanist-BlackItalic.ttf
          weight: 900
          style: italic
        - asset: assets/fonts/Urbanist-Thin.ttf
          weight: 100
        - asset: assets/fonts/Urbanist-ThinItalic.ttf
          weight: 100
          style: italic

    - family: Jost
      fonts:
        - asset: assets/fonts/Jost-Regular.ttf
        - asset: assets/fonts/Jost-Bold.ttf
          weight: 700
        - asset: assets/fonts/Jost-Light.ttf
          weight: 300
        - asset: assets/fonts/Jost-Medium.ttf
          weight: 500
        - asset: assets/fonts/Jost-SemiBold.ttf
          weight: 600
        - asset: assets/fonts/Jost-ExtraBold.ttf
          weight: 800
        - asset: assets/fonts/Jost-Black.ttf
          weight: 900
        - asset: assets/fonts/Jost-Italic.ttf
          style: italic
        - asset: assets/fonts/Jost-BoldItalic.ttf
          weight: 700
          style: italic
        - asset: assets/fonts/Jost-LightItalic.ttf
          weight: 300
          style: italic
        - asset: assets/fonts/Jost-MediumItalic.ttf
          weight: 500
          style: italic
        - asset: assets/fonts/Jost-SemiBoldItalic.ttf
          weight: 600
          style: italic
        - asset: assets/fonts/Jost-ExtraBoldItalic.ttf
          weight: 800
          style: italic
        - asset: assets/fonts/Jost-BlackItalic.ttf
          weight: 900
          style: italic
        - asset: assets/fonts/Jost-Thin.ttf
          weight: 100
        - asset: assets/fonts/Jost-ThinItalic.ttf
          weight: 100
          style: italic

    - family: Mulish
      fonts:
        - asset: assets/fonts/Mulish-Regular.ttf
        - asset: assets/fonts/Mulish-Bold.ttf
          weight: 700
        - asset: assets/fonts/Mulish-Light.ttf
          weight: 300
        - asset: assets/fonts/Mulish-Medium.ttf
          weight: 500
        - asset: assets/fonts/Mulish-SemiBold.ttf
          weight: 600
        - asset: assets/fonts/Mulish-ExtraBold.ttf
          weight: 800
        - asset: assets/fonts/Mulish-Black.ttf
          weight: 900
        - asset: assets/fonts/Mulish-Italic.ttf
          style: italic
        - asset: assets/fonts/Mulish-BoldItalic.ttf
          weight: 700
          style: italic
        - asset: assets/fonts/Mulish-LightItalic.ttf
          weight: 300
          style: italic
        - asset: assets/fonts/Mulish-MediumItalic.ttf
          weight: 500
          style: italic
        - asset: assets/fonts/Mulish-SemiBoldItalic.ttf
          weight: 600
          style: italic
        - asset: assets/fonts/Mulish-ExtraBoldItalic.ttf
          weight: 800
          style: italic
        - asset: assets/fonts/Mulish-BlackItalic.ttf
          weight: 900
          style: italic
```

Then run `flutter pub get`.

**Packages removed from the real `pubspec.yaml` (not needed in base template):**

- `dtd`, `json_rpc_2`, `web`, `stack_trace` — internal Dart tooling, not app deps.
- `device_preview` — dev-only tool; add it yourself when needed.
- `flutter_dynamic_icon_plus` — app-specific feature.
- `voice_note_kit` — domain-specific.

**Acceptance:** `flutter pub get` succeeds.

---

## Task 11 — Regenerate localization

If the project uses `intl_utils` / `flutter_intl` or `easy_localization`:
- Re-run the generator command for whichever is configured (`flutter pub run intl_utils:generate` or `flutter pub run easy_localization:generate ...`).
- The generated `lib/generated/l10n.dart` (or equivalent) must no longer contain the old EOL strings.

**Acceptance:** `lib/generated/` rebuilt and free of EOL references.

---

## Task 12 — Regenerate code-gen artifacts

Run:
```
dart run build_runner build --delete-conflicting-outputs
```

This regenerates all `*.freezed.dart`, `*.g.dart` files (e.g., `auth_request.freezed.dart`) under the new package name.

**Acceptance:** `flutter analyze` shows zero errors.

---

## Task 13 — README

Replace the project root `README.md` with a short template description:

```
# base_flutter

A reusable Flutter base template featuring:
- Clean architecture (core / features / data / ui)
- BLoC + GetIt DI
- Dio + Retrofit API layer
- Firebase (Crashlytics, Remote Config, Messaging)
- Auth (email + Google sign-in) with biometric inactivity lock
- Theming (light/dark + color themes)
- Localization
- Deep linking & notifications scaffolding

## Getting started
1. Clone and rename per `BASE_TEMPLATE_TASKS.md` if you forked this template.
2. `flutter pub get`
3. `dart run build_runner build --delete-conflicting-outputs`
4. Add `google-services.json` and `GoogleService-Info.plist`.
5. `flutter run -t lib/main_development.dart`
```

---

## Task 14 — Remove generated / environment leftovers

Delete these if present (they will be regenerated or are project-specific):
- `lib/firebase_options.dart` → replace with a placeholder file containing only a TODO comment instructing the user to run `flutterfire configure`.
- `android/app/google-services.json` → delete.
- `ios/Runner/GoogleService-Info.plist` → delete.
- `secrets/` folder content → keep folder, replace contents with `*.example.json` templates.

**Acceptance:** No real Firebase credentials remain in the repo.

---

## Task 15 — Final verification

Run, in order:
1. `flutter clean`
2. `flutter pub get`
3. `dart run build_runner build --delete-conflicting-outputs`
4. `flutter analyze` → must be **0 errors** (warnings/infos OK).
5. `grep -ri "eol" lib/ assets/ android/app/src/ ios/Runner/ pubspec.yaml` → must be empty.
6. `grep -r "EOLApp" lib/` → must be empty.

If all six pass, the template is done.

---

## Out of scope (do NOT do)

- Do not rewrite architecture.
- Do not switch state management.
- Do not bump SDK versions.
- Do not add new features.
- Do not touch tests.
- Do not reformat unrelated files.
