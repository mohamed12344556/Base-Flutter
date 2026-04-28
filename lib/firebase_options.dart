// TODO: Run `flutterfire configure` to set up Firebase options for your project.

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    throw UnsupportedError(
      'Firebase options not configured. Run `flutterfire configure` to set up.',
    );
  }
}