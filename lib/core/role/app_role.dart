/// Defines the two application roles: [student] and [teacher].
///
/// The role is derived from the authenticated user's profile field `roleType`
/// (string from backend: "Student" / "Teacher").
enum AppRole {
  student,
  teacher;

  /// Factory that maps a backend role string to [AppRole].
  ///
  /// Case-insensitively maps `'Teacher'` to [teacher];
  /// everything else maps to [student].
  static AppRole fromString(String value) {
    if (value.toLowerCase() == 'teacher') return AppRole.teacher;
    return AppRole.student;
  }
}
