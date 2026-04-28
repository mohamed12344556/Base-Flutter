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