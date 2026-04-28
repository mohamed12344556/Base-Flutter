import 'package:base_flutter/core/di/dependency_injection.dart';

import '../config/environment_config.dart';

class ApiConstants {
  static String get baseUrl => sl<EnvironmentConfig>().baseUrl;

  // App Headers Constants
  static const String appSignature =
      'IY9qKIbHD9aJvbgkvOc5+l6RWrLkGRXJJZp90d2ML7Q=';
  static const String appIdHeaderKey = 'X-App-Id';
  static const String appSignatureHeaderKey = 'X-App-Signature';
  static const String languageHeaderKey = 'X-Language';

  // Auth Endpoints
  static const String login = '/api/auth/login';
  static const String signup = '/api/Auth/register';
  static const String refreshToken = '/api/Auth/refresh-token';
  static const String forgotPassword = '/api/Auth/forgot-password';
  static const String verifyOtp = '/api/Auth/verify-otp';
  static const String resetPassword = '/api/Auth/reset-password';
  static const String changePassword = '/api/Auth/change-password';
  static const String logout = '/api/Auth/logout';
  static const String deleteAccount = '/api/Auth/account';

  // User Profile Endpoints
  static const String getUserProfile = '/api/User/profile';
  static const String updateProfileImage = '/api/User/profile-image';

  // Student Profile Endpoints
  static const String getStudentProfile = '/api/Student/profile';
  static const String updateStudentProfile = '/api/Student/profile';

  // Academic Endpoints
  static const String getAcademicStages = '/api/Academic/stages';
  static const String getAcademicYears = '/api/Academic/years';
  static const String getAcademicSections = '/api/Academic/sections';

  // Community/Questions Endpoints
  static const String questions = '/api/Questions';
  static String questionById(String id) => '/api/Questions/$id';
  static String questionMembers(String id) => '/api/Questions/$id/members';
  static const String subjects = '/api/Subjects';

  // Courses Endpoints
  static const String courses = '/api/Courses';
  static String coursePreview(String id) => '/api/Courses/$id/preview';
  static String courseProgress(String id) =>
      '/api/Courses/$id/progress/detailed';
  static const String myEnrolledCourses = '/api/Courses/my-enrolled-courses';

  // Enrollment Endpoints
  static String enroll(String courseId) => '/api/Enrollments/$courseId';

  // Reviews Endpoints
  static const String courseReviews = '/api/CourseReviews';

  // Teachers Endpoints
  static const String teachersPublic = '/api/teacher/public';
  static String teacherPublicProfile(String id) =>
      '/api/teacher/$id/public-profile';

  // Teacher Profile Endpoints
  static const String teacherProfile = '/api/Teacher/profile';
  static const String teacherDocuments = '/api/Teacher/documents';
  static String deleteTeacherDocument(String fileType) =>
      '/api/Teacher/files/$fileType';
  static const String teacherSubmitVerification = '/api/Teacher/submit-verification';

  // Subscription Endpoints
  static const String cancelSubscription = '/api/subscription/cancel';

  // Advertisement Endpoints
  static const String advertisementReels = '/api/AdvertisementDisplay/reels';
  static String advertisementView(int id) =>
      '/api/AdvertisementDisplay/$id/view';

  // Notification Endpoints
  static const String notifications = '/api/notifications';
  static const String notificationsSummary = '/api/notifications/summary';
  static String markNotificationRead(String id) =>
      '/api/notifications/$id/mark-read';
  static const String markAllNotificationsRead =
      '/api/notifications/mark-all-read';
  static String deleteNotification(String id) => '/api/notifications/$id';
  static const String deleteAllNotifications = '/api/notifications/delete-all';

  // SignalR Hub Endpoints
  static const String communityHub = '/communityHub';
  static const String courseRoomHub = '/courseRoomHub';
  static const String xpHub = '/hubs/xp';

  // Helper method to get full SignalR URL
  static String get communityHubUrl => '$baseUrl$communityHub';
  static String get courseRoomHubUrl => '$baseUrl$courseRoomHub';
  static String get xpHubUrl => '$baseUrl$xpHub';

  // XP REST Endpoints
  static const String weeklyLeaderboard = '/api/xp/leaderboard/weekly/paginated';

  // Quiz Endpoints
  static String courseQuizzes(String courseId) =>
      '/api/Courses/$courseId/Quizzes';
  static const String quizById = '/api/Quizzes'; // use quizById(quizId) below
  static String quizDetail(String quizId) => '/api/Quizzes/$quizId';
  static String quizPublish(String quizId) => '/api/Quizzes/$quizId/publish';
  static String quizUnpublish(String quizId) =>
      '/api/Quizzes/$quizId/unpublish';
  static String quizSubmissions(String quizId) =>
      '/api/Quizzes/$quizId/submissions';
  static String quizStats(String quizId) => '/api/Quizzes/$quizId/stats';
  static String submissionById(String submissionId) =>
      '/api/Submissions/$submissionId';
  static String submissionAnswerOverride(
    String submissionId,
    String questionId,
  ) => '/api/Submissions/$submissionId/answers/$questionId/override';
  static String courseQuizAttempts(String quizId) =>
      '/api/Quizzes/$quizId/attempts';
  static String attemptAnswer(String attemptId, String questionId) =>
      '/api/Attempts/$attemptId/answers/$questionId';
  static String attemptSubmit(String attemptId) =>
      '/api/Attempts/$attemptId/submit';
  static String attemptById(String attemptId) => '/api/Attempts/$attemptId';

  // Classroom Endpoints
  static String courseRoomAttachments(String roomId) =>
      '/api/CourseRoom/$roomId/attachments';

  // Share Endpoints
  static String shareCourseJson(String courseId) =>
      '/api/Share/courses/$courseId.json';
  static String shareCourseClick(String courseId) =>
      '/api/Share/courses/$courseId/click';
}
