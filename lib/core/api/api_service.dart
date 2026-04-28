import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/data/models/auth_request.dart';
import '../../features/auth/data/models/auth_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  // Auth Endpoints

  @POST(ApiConstants.login)
  Future<AuthResponse> login(@Body() AuthRequest request);

  @POST(ApiConstants.signup)
  Future<AuthResponse> signup(@Body() AuthRequest request);

  @POST(ApiConstants.refreshToken)
  Future<AuthResponse> refreshToken(@Body() AuthRequest request);

  @POST(ApiConstants.forgotPassword)
  Future<SimpleResponse> forgotPassword(@Body() AuthRequest request);

  @POST(ApiConstants.verifyOtp)
  Future<SimpleResponse> verifyOtp(@Body() AuthRequest request);

  @POST(ApiConstants.resetPassword)
  Future<SimpleResponse> resetPassword(@Body() AuthRequest request);

  @POST(ApiConstants.changePassword)
  Future<SimpleResponse> changePassword(@Body() AuthRequest request);

  @POST(ApiConstants.logout)
  Future<SimpleResponse> logout();

  @DELETE(ApiConstants.deleteAccount)
  Future<SimpleResponse> deleteAccount();

  // Profile Endpoints

  @GET(ApiConstants.getUserProfile)
  Future<ProfileResponse> getUserProfile();

  @GET(ApiConstants.getStudentProfile)
  Future<StudentProfileResponse> getStudentProfile();

  @PUT(ApiConstants.updateStudentProfile)
  Future<StudentProfileResponse> updateStudentProfile(
    @Body() UpdateStudentProfileRequest request,
  );

  // Notification Endpoints

  @GET(ApiConstants.notifications)
  Future<dynamic> getNotifications({
    @Query('page') int? page,
    @Query('pageSize') int? pageSize,
  });

  @GET(ApiConstants.notificationsSummary)
  Future<dynamic> getNotificationsSummary();

  @POST('/api/notifications/{id}/mark-read')
  Future<SimpleResponse> markNotificationAsRead(@Path('id') String id);

  @POST(ApiConstants.markAllNotificationsRead)
  Future<SimpleResponse> markAllNotificationsAsRead();

  @DELETE('/api/notifications/{id}')
  Future<SimpleResponse> deleteNotification(@Path('id') String id);

  @DELETE(ApiConstants.deleteAllNotifications)
  Future<SimpleResponse> deleteAllNotifications();
}
