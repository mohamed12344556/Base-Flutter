import 'app_role.dart';

class RoleManager {
  RoleManager();

  // TODO: replace with your own user/role source
  AppRole get currentRole => AppRole.student;

  bool get isTeacher => currentRole == AppRole.teacher;
  bool get isStudent => currentRole == AppRole.student;
}
