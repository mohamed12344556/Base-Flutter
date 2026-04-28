// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(count) => "${count} characters";

  static String m1(count) => "${count}d ago";

  static String m2(count) => "${count}h ago";

  static String m3(time) => "Last modified: ${time}";

  static String m4(time) => "Last updated ${time} ago";

  static String m5(current, total) => "Lecture ${current} of ${total}";

  static String m6(count) => "${count} lessons left";

  static String m7(count) => "${count} min ago";

  static String m8(day) => "No Events on ${day}";

  static String m9(day) => "No Lessons on ${day}";

  static String m10(field) => "Please enter ${field}";

  static String m11(current, total) => "Question ${current} of ${total}";

  static String m12(index) => "Reading Material ${index}";

  static String m13(courseTitle, teacherName, shareUrl) =>
      "${courseTitle} — by ${teacherName}\n\n${shareUrl}";

  static String m14(reason) => "Verification rejected: ${reason}";

  static String m15(count) => "${count} words";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about": MessageLookupByLibrary.simpleMessage("About"),
    "academic_info": MessageLookupByLibrary.simpleMessage("ACADEMIC INFO"),
    "academic_section_hint": MessageLookupByLibrary.simpleMessage(
      "Academic Section",
    ),
    "academic_stage_hint": MessageLookupByLibrary.simpleMessage(
      "Academic Stage",
    ),
    "academic_year_hint": MessageLookupByLibrary.simpleMessage("Academic Year"),
    "account_management": MessageLookupByLibrary.simpleMessage(
      "Account Management",
    ),
    "account_section": MessageLookupByLibrary.simpleMessage("ACCOUNT"),
    "active_sessions": MessageLookupByLibrary.simpleMessage("Active Sessions"),
    "active_sessions_desc": MessageLookupByLibrary.simpleMessage(
      "Manage your active login sessions",
    ),
    "ad_explore_more": MessageLookupByLibrary.simpleMessage("Explore More →"),
    "ad_label": MessageLookupByLibrary.simpleMessage("Ad"),
    "add_event": MessageLookupByLibrary.simpleMessage("Add Event"),
    "add_new_event": MessageLookupByLibrary.simpleMessage("Add New Event"),
    "add_note_position": MessageLookupByLibrary.simpleMessage(
      "Add a note at current position...",
    ),
    "ai_chat": MessageLookupByLibrary.simpleMessage("AI Chat"),
    "ai_service_error": MessageLookupByLibrary.simpleMessage(
      "AI service is temporarily unavailable. Please try again.",
    ),
    "ai_tools": MessageLookupByLibrary.simpleMessage("AI Tools"),
    "all_filter": MessageLookupByLibrary.simpleMessage("All"),
    "an_error_occurred": MessageLookupByLibrary.simpleMessage(
      "An error occurred",
    ),
    "app_title": MessageLookupByLibrary.simpleMessage("EOL"),
    "apple_sign_in": MessageLookupByLibrary.simpleMessage("Apple sign in"),
    "apply_changes": MessageLookupByLibrary.simpleMessage("Apply Changes"),
    "ask_math_question": MessageLookupByLibrary.simpleMessage(
      "Ask a math or physics question...",
    ),
    "ask_me_anything": MessageLookupByLibrary.simpleMessage(
      "Ask me anything...",
    ),
    "assignments": MessageLookupByLibrary.simpleMessage("Assignments"),
    "assignments_desc": MessageLookupByLibrary.simpleMessage(
      "Assignment deadlines and reminders",
    ),
    "auto_logout": MessageLookupByLibrary.simpleMessage("Auto Logout"),
    "auto_logout_desc": MessageLookupByLibrary.simpleMessage(
      "Automatically logout after 30 minutes",
    ),
    "biometric_desc": MessageLookupByLibrary.simpleMessage(
      "Use fingerprint or face recognition",
    ),
    "biometric_failed": MessageLookupByLibrary.simpleMessage(
      "Biometric authentication failed. Please try again.",
    ),
    "biometric_locked_out": MessageLookupByLibrary.simpleMessage(
      "Too many failed attempts. Please log in again.",
    ),
    "biometric_login": MessageLookupByLibrary.simpleMessage("Biometric Login"),
    "biometric_login_button": MessageLookupByLibrary.simpleMessage(
      "Login with Biometrics",
    ),
    "biometric_reason": MessageLookupByLibrary.simpleMessage(
      "Confirm your identity to access EOL",
    ),
    "biometric_reason_cancel_subscription":
        MessageLookupByLibrary.simpleMessage(
          "Confirm your identity to cancel subscription",
        ),
    "biometric_reason_delete_account": MessageLookupByLibrary.simpleMessage(
      "Confirm your identity to delete your account",
    ),
    "biometric_reason_login": MessageLookupByLibrary.simpleMessage(
      "Confirm your identity to log in",
    ),
    "browseCourses": MessageLookupByLibrary.simpleMessage("Browse Courses"),
    "browse_courses": MessageLookupByLibrary.simpleMessage("Browse Courses"),
    "button_continue": MessageLookupByLibrary.simpleMessage("Continue"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "change_password": MessageLookupByLibrary.simpleMessage("Change Password"),
    "change_password_redirect": MessageLookupByLibrary.simpleMessage(
      "You will be redirected to change your password.",
    ),
    "characters_count": m0,
    "chat_pdf": MessageLookupByLibrary.simpleMessage("Chat PDF"),
    "check_back_soon": MessageLookupByLibrary.simpleMessage("Check back soon!"),
    "check_back_trending": MessageLookupByLibrary.simpleMessage(
      "Check back soon for trending courses!",
    ),
    "choose_question_detail": MessageLookupByLibrary.simpleMessage(
      "Choose a question to view details",
    ),
    "classroomClosed": MessageLookupByLibrary.simpleMessage(
      "This classroom is currently closed",
    ),
    "classroomEmpty": MessageLookupByLibrary.simpleMessage(
      "No messages yet. Start the conversation!",
    ),
    "classroomFileTooLarge": MessageLookupByLibrary.simpleMessage(
      "File size must be less than 25 MB",
    ),
    "classroomOffline": MessageLookupByLibrary.simpleMessage(
      "You are offline. Message will be sent when connected",
    ),
    "classroomPinned": MessageLookupByLibrary.simpleMessage("Pinned Message"),
    "classroomRecording": MessageLookupByLibrary.simpleMessage(
      "Recording... Slide up to cancel",
    ),
    "classroomRemoved": MessageLookupByLibrary.simpleMessage(
      "You have been removed from this classroom",
    ),
    "classroomReply": MessageLookupByLibrary.simpleMessage("Reply"),
    "classroomTyping": MessageLookupByLibrary.simpleMessage("is typing..."),
    "classroomUnsupportedFileType": MessageLookupByLibrary.simpleMessage(
      "This file type is not allowed",
    ),
    "code_tutor": MessageLookupByLibrary.simpleMessage("Code Tutor"),
    "color_label": MessageLookupByLibrary.simpleMessage("Color"),
    "coming_soon": MessageLookupByLibrary.simpleMessage("Coming soon!"),
    "confirm_password_label": MessageLookupByLibrary.simpleMessage(
      "Confirm Password",
    ),
    "continue_label": MessageLookupByLibrary.simpleMessage("Continue"),
    "continue_learning": MessageLookupByLibrary.simpleMessage(
      "Continue Learning",
    ),
    "continue_with": MessageLookupByLibrary.simpleMessage("Or continue with"),
    "courseUnavailable": MessageLookupByLibrary.simpleMessage(
      "This course is no longer available",
    ),
    "course_content": MessageLookupByLibrary.simpleMessage("Course Content"),
    "course_enrollment": MessageLookupByLibrary.simpleMessage(
      "Course Enrollment",
    ),
    "course_updates": MessageLookupByLibrary.simpleMessage("Course Updates"),
    "course_updates_desc": MessageLookupByLibrary.simpleMessage(
      "New courses, updates, and announcements",
    ),
    "courses": MessageLookupByLibrary.simpleMessage("Courses"),
    "create_first_note": MessageLookupByLibrary.simpleMessage(
      "Create Your First Note",
    ),
    "create_first_note_description": MessageLookupByLibrary.simpleMessage(
      "Add a note about anything (your thoughts on climate change, or your history essay) and share it with the world.",
    ),
    "create_new_plan_desc": MessageLookupByLibrary.simpleMessage(
      "Create a new study plan with current preferences",
    ),
    "create_note": MessageLookupByLibrary.simpleMessage("Create Note"),
    "credit_card": MessageLookupByLibrary.simpleMessage("Credit Card"),
    "credit_card_desc": MessageLookupByLibrary.simpleMessage(
      "Visa, MasterCard, American Express",
    ),
    "current_language": MessageLookupByLibrary.simpleMessage(
      "Current Language",
    ),
    "dark_mode": MessageLookupByLibrary.simpleMessage("Dark Mode"),
    "date_of_birth_label": MessageLookupByLibrary.simpleMessage(
      "Date of Birth",
    ),
    "days_ago": m1,
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "delete_account": MessageLookupByLibrary.simpleMessage("Delete Account"),
    "delete_account_confirm": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete your account? This action cannot be undone.",
    ),
    "delete_account_desc": MessageLookupByLibrary.simpleMessage(
      "Permanently delete your account",
    ),
    "delete_event": MessageLookupByLibrary.simpleMessage("Delete Event"),
    "delete_note": MessageLookupByLibrary.simpleMessage("Delete Note"),
    "delete_note_confirm": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this note? This action cannot be undone.",
    ),
    "download_data": MessageLookupByLibrary.simpleMessage("Download My Data"),
    "download_data_desc": MessageLookupByLibrary.simpleMessage(
      "Download all your account data",
    ),
    "draft": MessageLookupByLibrary.simpleMessage("Draft"),
    "edit": MessageLookupByLibrary.simpleMessage("Edit"),
    "edit_note": MessageLookupByLibrary.simpleMessage("Edit Note"),
    "edit_preferences": MessageLookupByLibrary.simpleMessage(
      "Edit Preferences",
    ),
    "edit_profile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
    "eg_currency": MessageLookupByLibrary.simpleMessage("EGP"),
    "email_label": MessageLookupByLibrary.simpleMessage("Email"),
    "email_notifications": MessageLookupByLibrary.simpleMessage(
      "Email Notifications",
    ),
    "email_notifications_desc": MessageLookupByLibrary.simpleMessage(
      "Receive notifications via email",
    ),
    "email_placeholder_student": MessageLookupByLibrary.simpleMessage(
      "student@student.eol.edu",
    ),
    "email_placeholder_teacher": MessageLookupByLibrary.simpleMessage(
      "teacher@teacher.eol.edu",
    ),
    "email_required": MessageLookupByLibrary.simpleMessage("Email is required"),
    "empty_community": MessageLookupByLibrary.simpleMessage("No Questions Yet"),
    "empty_courses": MessageLookupByLibrary.simpleMessage("No Courses Yet"),
    "empty_generic": MessageLookupByLibrary.simpleMessage("Nothing Here Yet"),
    "empty_my_courses_subtitle": MessageLookupByLibrary.simpleMessage(
      "Start learning by enrolling in a course",
    ),
    "empty_my_courses_title": MessageLookupByLibrary.simpleMessage(
      "No Courses Yet",
    ),
    "empty_notes": MessageLookupByLibrary.simpleMessage("No Notes Yet"),
    "empty_notifications": MessageLookupByLibrary.simpleMessage(
      "No Notifications Yet",
    ),
    "enable_quiet_hours": MessageLookupByLibrary.simpleMessage(
      "Enable Quiet Hours",
    ),
    "end_time": MessageLookupByLibrary.simpleMessage("End Time"),
    "enroll_now": MessageLookupByLibrary.simpleMessage("Enroll Now"),
    "enter_your_email": MessageLookupByLibrary.simpleMessage(
      "Enter your email",
    ),
    "enter_your_phone": MessageLookupByLibrary.simpleMessage(
      "Enter your phone number",
    ),
    "error_auth": MessageLookupByLibrary.simpleMessage(
      "Your session has expired. Please log in again",
    ),
    "error_completing_onboarding": MessageLookupByLibrary.simpleMessage(
      "Error completing onboarding",
    ),
    "error_generic": MessageLookupByLibrary.simpleMessage(
      "Something Went Wrong",
    ),
    "error_generic_subtitle": MessageLookupByLibrary.simpleMessage(
      "We encountered an unexpected error. Please try again",
    ),
    "error_go_back": MessageLookupByLibrary.simpleMessage("Go Back"),
    "error_loading_note": MessageLookupByLibrary.simpleMessage(
      "Error loading note",
    ),
    "error_network": MessageLookupByLibrary.simpleMessage(
      "No internet connection. Please check your connection and try again.",
    ),
    "error_no_internet": MessageLookupByLibrary.simpleMessage(
      "No Internet Connection",
    ),
    "error_no_internet_subtitle": MessageLookupByLibrary.simpleMessage(
      "Please check your internet connection and try again",
    ),
    "error_not_found": MessageLookupByLibrary.simpleMessage("Not Found"),
    "error_offline_content_expired": MessageLookupByLibrary.simpleMessage(
      "This content is not available offline",
    ),
    "error_quiz_alreadyInProgress": MessageLookupByLibrary.simpleMessage(
      "You already have an attempt in progress",
    ),
    "error_quiz_alreadySubmitted": MessageLookupByLibrary.simpleMessage(
      "This quiz has already been submitted",
    ),
    "error_quiz_attemptExpired": MessageLookupByLibrary.simpleMessage(
      "Your quiz attempt has expired",
    ),
    "error_quiz_attemptWindowClosed": MessageLookupByLibrary.simpleMessage(
      "This quiz attempt window has closed",
    ),
    "error_quiz_attemptsExhausted": MessageLookupByLibrary.simpleMessage(
      "No more attempts allowed",
    ),
    "error_quiz_enrollmentRequired": MessageLookupByLibrary.simpleMessage(
      "You must be enrolled to take this quiz",
    ),
    "error_quiz_hasSubmissions": MessageLookupByLibrary.simpleMessage(
      "This quiz has submissions and cannot be deleted",
    ),
    "error_quiz_questionsLockedAfterFirstSubmission":
        MessageLookupByLibrary.simpleMessage(
          "Questions cannot be changed after first submission",
        ),
    "error_quiz_quizNotAvailable": MessageLookupByLibrary.simpleMessage(
      "This quiz is not available",
    ),
    "error_retry": MessageLookupByLibrary.simpleMessage("Try Again"),
    "error_server": MessageLookupByLibrary.simpleMessage("Server Error"),
    "error_server_subtitle": MessageLookupByLibrary.simpleMessage(
      "Something went wrong. We\'re working to fix it",
    ),
    "error_timeout": MessageLookupByLibrary.simpleMessage("Request Timeout"),
    "error_timeout_subtitle": MessageLookupByLibrary.simpleMessage(
      "The request took too long. Please try again",
    ),
    "error_unauthorized": MessageLookupByLibrary.simpleMessage("Access Denied"),
    "error_unknown": MessageLookupByLibrary.simpleMessage(
      "An unexpected error occurred. Please try again.",
    ),
    "error_validation": MessageLookupByLibrary.simpleMessage(
      "Please check the highlighted fields and try again.",
    ),
    "event_title_label": MessageLookupByLibrary.simpleMessage("Event Title"),
    "exp_label": MessageLookupByLibrary.simpleMessage("Exp."),
    "explore_all": MessageLookupByLibrary.simpleMessage("Explore All"),
    "extracting_video": MessageLookupByLibrary.simpleMessage(
      "Extracting video content...",
    ),
    "failed_to_load_video": MessageLookupByLibrary.simpleMessage(
      "Failed to load video",
    ),
    "female": MessageLookupByLibrary.simpleMessage("Female"),
    "field_required": MessageLookupByLibrary.simpleMessage(
      "This field is required",
    ),
    "first_review": MessageLookupByLibrary.simpleMessage(
      "Be the first to leave a review for this lecture!",
    ),
    "force_update_body": MessageLookupByLibrary.simpleMessage(
      "This version of EOL is no longer supported. Please update to continue.",
    ),
    "force_update_button": MessageLookupByLibrary.simpleMessage(
      "Update to Continue",
    ),
    "force_update_title": MessageLookupByLibrary.simpleMessage(
      "Update Required",
    ),
    "forget_pass_title_page": MessageLookupByLibrary.simpleMessage(
      "Forgot Password",
    ),
    "forgot_password": MessageLookupByLibrary.simpleMessage("Forgot Password?"),
    "forgot_password_remember": MessageLookupByLibrary.simpleMessage(
      "Remember your password? ",
    ),
    "free_filter": MessageLookupByLibrary.simpleMessage("Free"),
    "free_label": MessageLookupByLibrary.simpleMessage("Free"),
    "from_label": MessageLookupByLibrary.simpleMessage("From"),
    "full_name_label": MessageLookupByLibrary.simpleMessage("Full Name"),
    "gender_female": MessageLookupByLibrary.simpleMessage("Female"),
    "gender_male": MessageLookupByLibrary.simpleMessage("Male"),
    "generate_new_plan": MessageLookupByLibrary.simpleMessage(
      "Generate New Plan",
    ),
    "generate_quiz": MessageLookupByLibrary.simpleMessage("Generate Quiz"),
    "generating_plan_desc": MessageLookupByLibrary.simpleMessage(
      "AI is analyzing your preferences and creating a customized study schedule",
    ),
    "generating_plan_title": MessageLookupByLibrary.simpleMessage(
      "Generating Your Personalized Study Plan...",
    ),
    "generating_quiz": MessageLookupByLibrary.simpleMessage(
      "Generating quiz...",
    ),
    "go_back": MessageLookupByLibrary.simpleMessage("Go Back"),
    "google_sign_in": MessageLookupByLibrary.simpleMessage("Google sign in"),
    "help_center": MessageLookupByLibrary.simpleMessage("Help Center"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "hours_ago": m2,
    "image_download_coming_soon": MessageLookupByLibrary.simpleMessage(
      "Image download feature coming soon!",
    ),
    "image_share_coming_soon": MessageLookupByLibrary.simpleMessage(
      "Image sharing feature coming soon!",
    ),
    "instruction_text": MessageLookupByLibrary.simpleMessage(
      "Select which contact details should we use to\nReset Your Password",
    ),
    "invalid_email_format": MessageLookupByLibrary.simpleMessage(
      "Invalid email format",
    ),
    "invalid_payment_data": MessageLookupByLibrary.simpleMessage(
      "Invalid payment data",
    ),
    "invalid_preferences_data": MessageLookupByLibrary.simpleMessage(
      "Invalid preferences data",
    ),
    "invalid_youtube_url": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid YouTube URL.",
    ),
    "invite_email_hint": MessageLookupByLibrary.simpleMessage(
      "Enter friend\'s email address",
    ),
    "invite_friends": MessageLookupByLibrary.simpleMessage("Invite Friends"),
    "just_now": MessageLookupByLibrary.simpleMessage("Just now"),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "language_changed": MessageLookupByLibrary.simpleMessage(
      "Language changed successfully",
    ),
    "language_settings": MessageLookupByLibrary.simpleMessage(
      "Language Settings",
    ),
    "last_modified": m3,
    "last_updated_ago": m4,
    "lecture_of": m5,
    "lessons": MessageLookupByLibrary.simpleMessage("Lessons"),
    "lessons_appear_here": MessageLookupByLibrary.simpleMessage(
      "Lessons for this course will appear here.",
    ),
    "lessons_left": m6,
    "loading_preferences": MessageLookupByLibrary.simpleMessage(
      "Loading your preferences...",
    ),
    "login_alerts": MessageLookupByLibrary.simpleMessage("Login Alerts"),
    "login_alerts_desc": MessageLookupByLibrary.simpleMessage(
      "Get notified of new login attempts",
    ),
    "login_button": MessageLookupByLibrary.simpleMessage("Login"),
    "login_cancelled": MessageLookupByLibrary.simpleMessage(
      "Login was cancelled",
    ),
    "login_failed": MessageLookupByLibrary.simpleMessage(
      "Login failed. Please try again",
    ),
    "login_required": MessageLookupByLibrary.simpleMessage("Login required"),
    "login_success": MessageLookupByLibrary.simpleMessage("Login successful"),
    "login_welcome_back": MessageLookupByLibrary.simpleMessage(
      "Welcome back! Please sign in to continue.",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Logout"),
    "male": MessageLookupByLibrary.simpleMessage("Male"),
    "materials": MessageLookupByLibrary.simpleMessage("Materials"),
    "materials_appear_here": MessageLookupByLibrary.simpleMessage(
      "Resources attached to this lecture will appear here.",
    ),
    "message_deleted": MessageLookupByLibrary.simpleMessage(
      "🗑️ Message has been deleted",
    ),
    "messages": MessageLookupByLibrary.simpleMessage("Messages"),
    "messages_desc": MessageLookupByLibrary.simpleMessage(
      "New messages from instructors and peers",
    ),
    "min_ago": m7,
    "modify_preferences_desc": MessageLookupByLibrary.simpleMessage(
      "Modify your current study preferences",
    ),
    "more_section": MessageLookupByLibrary.simpleMessage("MORE"),
    "my_courses": MessageLookupByLibrary.simpleMessage("My Courses"),
    "my_plan": MessageLookupByLibrary.simpleMessage("My Plan"),
    "name_min_length": MessageLookupByLibrary.simpleMessage(
      "Name must be at least 2 words",
    ),
    "new_label": MessageLookupByLibrary.simpleMessage("NEW"),
    "new_note": MessageLookupByLibrary.simpleMessage("New Note"),
    "nickname_label": MessageLookupByLibrary.simpleMessage("Nickname"),
    "no_courses_found": MessageLookupByLibrary.simpleMessage(
      "No courses found",
    ),
    "no_courses_yet": MessageLookupByLibrary.simpleMessage("No courses yet"),
    "no_events_on": m8,
    "no_events_today": MessageLookupByLibrary.simpleMessage("No Events Today"),
    "no_lessons_on": m9,
    "no_lessons_today": MessageLookupByLibrary.simpleMessage(
      "No Lessons Today",
    ),
    "no_lessons_yet": MessageLookupByLibrary.simpleMessage("No Lessons Yet"),
    "no_materials": MessageLookupByLibrary.simpleMessage("No Materials"),
    "no_mentors_available": MessageLookupByLibrary.simpleMessage(
      "No mentors available",
    ),
    "no_notes": MessageLookupByLibrary.simpleMessage("No notes"),
    "no_notes_added": MessageLookupByLibrary.simpleMessage("No Notes Added"),
    "no_notifications": MessageLookupByLibrary.simpleMessage(
      "No Notifications",
    ),
    "no_notifications_yet": MessageLookupByLibrary.simpleMessage(
      "You don\'t have any notifications yet",
    ),
    "no_place": MessageLookupByLibrary.simpleMessage("No place"),
    "no_popular_courses": MessageLookupByLibrary.simpleMessage(
      "No popular courses available",
    ),
    "no_reviews_yet": MessageLookupByLibrary.simpleMessage("No Reviews Yet"),
    "no_subjects_available": MessageLookupByLibrary.simpleMessage(
      "No subjects available",
    ),
    "no_unread_notifications": MessageLookupByLibrary.simpleMessage(
      "No Unread Notifications",
    ),
    "no_video_available": MessageLookupByLibrary.simpleMessage(
      "No video available",
    ),
    "note_content_hint": MessageLookupByLibrary.simpleMessage(
      "Start writing your thoughts...",
    ),
    "note_deleted": MessageLookupByLibrary.simpleMessage(
      "Note deleted successfully",
    ),
    "note_empty_content": MessageLookupByLibrary.simpleMessage(
      "Please add some content to your note",
    ),
    "note_not_found": MessageLookupByLibrary.simpleMessage("Note not found"),
    "note_save_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to save note",
    ),
    "note_saved": MessageLookupByLibrary.simpleMessage(
      "Note saved successfully",
    ),
    "note_title_hint": MessageLookupByLibrary.simpleMessage("Note Title"),
    "note_updated": MessageLookupByLibrary.simpleMessage(
      "Note updated successfully",
    ),
    "notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "notes_appear_here": MessageLookupByLibrary.simpleMessage(
      "Your personal notes for this lecture will be saved here.",
    ),
    "notes_label": MessageLookupByLibrary.simpleMessage("Notes"),
    "notes_title": MessageLookupByLibrary.simpleMessage("Notes"),
    "notification_methods": MessageLookupByLibrary.simpleMessage(
      "Notification Methods",
    ),
    "notification_types": MessageLookupByLibrary.simpleMessage(
      "Notification Types",
    ),
    "notifications_settings": MessageLookupByLibrary.simpleMessage(
      "Notifications Settings",
    ),
    "onboarding_ai_assistant_subtitle": MessageLookupByLibrary.simpleMessage(
      "Get instant help and personalized guidance from our intelligent AI assistant, available whenever you need it.",
    ),
    "onboarding_ai_assistant_title": MessageLookupByLibrary.simpleMessage(
      "AI Assistant 24/7",
    ),
    "onboarding_ai_powered_subtitle": MessageLookupByLibrary.simpleMessage(
      "Personalized learning paths and instant doubt resolution powered by advanced AI technology.",
    ),
    "onboarding_ai_powered_title": MessageLookupByLibrary.simpleMessage(
      "AI Powered",
    ),
    "onboarding_best_learn_subtitle": MessageLookupByLibrary.simpleMessage(
      "Discover the most effective way to learn with our innovative platform designed for modern learners.",
    ),
    "onboarding_best_learn_title": MessageLookupByLibrary.simpleMessage(
      "Best Learn",
    ),
    "onboarding_get_started": MessageLookupByLibrary.simpleMessage(
      "Get Started",
    ),
    "onboarding_share_with_community_subtitle":
        MessageLookupByLibrary.simpleMessage(
          "Connect with fellow learners, share your progress, and grow together in our supportive community.",
        ),
    "onboarding_share_with_community_title":
        MessageLookupByLibrary.simpleMessage("Share with Community"),
    "onboarding_skip": MessageLookupByLibrary.simpleMessage("Skip"),
    "onboarding_track_progress_subtitle": MessageLookupByLibrary.simpleMessage(
      "Monitor your learning journey with detailed analytics and progress tracking.",
    ),
    "onboarding_track_progress_title": MessageLookupByLibrary.simpleMessage(
      "Track Progress",
    ),
    "option_via_email": MessageLookupByLibrary.simpleMessage("Via Email"),
    "option_via_sms": MessageLookupByLibrary.simpleMessage("Via SMS"),
    "otp_instruction": MessageLookupByLibrary.simpleMessage(
      "Enter the 4-digit OTP code that has been sent via SMS\nto complete your account registration",
    ),
    "otp_page_title": MessageLookupByLibrary.simpleMessage("OTP Authenticate"),
    "otp_reset_subtitle": MessageLookupByLibrary.simpleMessage(
      "Enter the OTP code sent to your email to reset your password",
    ),
    "otp_verify_email_title": MessageLookupByLibrary.simpleMessage(
      "Verify Your Email",
    ),
    "otp_verify_subtitle": MessageLookupByLibrary.simpleMessage(
      "Enter the OTP code sent to your email to verify your account",
    ),
    "paid_filter": MessageLookupByLibrary.simpleMessage("Paid"),
    "password_and_auth": MessageLookupByLibrary.simpleMessage(
      "Password & Authentication",
    ),
    "password_criteria_lowercase": MessageLookupByLibrary.simpleMessage(
      "Lowercase",
    ),
    "password_criteria_lowercase_full": MessageLookupByLibrary.simpleMessage(
      "At least one lowercase letter",
    ),
    "password_criteria_min_length": MessageLookupByLibrary.simpleMessage(
      "8+ Characters",
    ),
    "password_criteria_min_length_full": MessageLookupByLibrary.simpleMessage(
      "At least 8 characters",
    ),
    "password_criteria_number": MessageLookupByLibrary.simpleMessage("Number"),
    "password_criteria_number_full": MessageLookupByLibrary.simpleMessage(
      "At least one number",
    ),
    "password_criteria_special_char": MessageLookupByLibrary.simpleMessage(
      "Special Char",
    ),
    "password_criteria_special_char_full": MessageLookupByLibrary.simpleMessage(
      "At least one special character",
    ),
    "password_criteria_uppercase": MessageLookupByLibrary.simpleMessage(
      "Uppercase",
    ),
    "password_criteria_uppercase_full": MessageLookupByLibrary.simpleMessage(
      "At least one uppercase letter",
    ),
    "password_label": MessageLookupByLibrary.simpleMessage("Password"),
    "password_label_reset_page": MessageLookupByLibrary.simpleMessage(
      "Enter new password",
    ),
    "password_min_length": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 8 characters",
    ),
    "password_min_length_reset": MessageLookupByLibrary.simpleMessage(
      "at least 8 characters",
    ),
    "password_placeholder": MessageLookupByLibrary.simpleMessage("Password"),
    "password_required": MessageLookupByLibrary.simpleMessage(
      "Password is required",
    ),
    "password_requirements": MessageLookupByLibrary.simpleMessage(
      "Please meet all password requirements",
    ),
    "passwords_dont_match": MessageLookupByLibrary.simpleMessage(
      "Passwords do not match",
    ),
    "payment_option": MessageLookupByLibrary.simpleMessage("Payment Option"),
    "paypal": MessageLookupByLibrary.simpleMessage("PayPal"),
    "paypal_desc": MessageLookupByLibrary.simpleMessage(
      "Pay with your PayPal account",
    ),
    "pdf_document": MessageLookupByLibrary.simpleMessage("PDF Document"),
    "pdf_only_allowed": MessageLookupByLibrary.simpleMessage(
      "Only PDF files are allowed",
    ),
    "personal_info": MessageLookupByLibrary.simpleMessage("PERSONAL INFO"),
    "phone_invalid_format": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid phone number",
    ),
    "phone_number_label": MessageLookupByLibrary.simpleMessage("Phone Number"),
    "place_label": MessageLookupByLibrary.simpleMessage("Place"),
    "plan_title": MessageLookupByLibrary.simpleMessage("Plan"),
    "please_enter_event_title": MessageLookupByLibrary.simpleMessage(
      "Please enter event title",
    ),
    "please_enter_field": m10,
    "popular_courses": MessageLookupByLibrary.simpleMessage("Popular Courses"),
    "powered_by_ai": MessageLookupByLibrary.simpleMessage("Powered by AI"),
    "preferences_already_set": MessageLookupByLibrary.simpleMessage(
      "Preferences Already Set",
    ),
    "preferences_already_set_desc": MessageLookupByLibrary.simpleMessage(
      "You have already configured your study preferences",
    ),
    "preferences_section": MessageLookupByLibrary.simpleMessage("PREFERENCES"),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "privacy_policy_desc": MessageLookupByLibrary.simpleMessage(
      "View our privacy policy",
    ),
    "privacy_settings": MessageLookupByLibrary.simpleMessage(
      "Privacy Settings",
    ),
    "processing_audio": MessageLookupByLibrary.simpleMessage(
      "Upload Audio & Generate Quiz",
    ),
    "profile_updated": MessageLookupByLibrary.simpleMessage(
      "Profile updated successfully",
    ),
    "promotions": MessageLookupByLibrary.simpleMessage("Promotions"),
    "promotions_desc": MessageLookupByLibrary.simpleMessage(
      "Special offers and discounts",
    ),
    "push_notifications": MessageLookupByLibrary.simpleMessage(
      "Push Notifications",
    ),
    "push_notifications_desc": MessageLookupByLibrary.simpleMessage(
      "Receive notifications on your device",
    ),
    "question_of": m11,
    "quiet_hours": MessageLookupByLibrary.simpleMessage("Quiet Hours"),
    "quiz": MessageLookupByLibrary.simpleMessage("Quiz"),
    "quizAllowRetakes": MessageLookupByLibrary.simpleMessage("Allow Retakes"),
    "quizAlreadyInProgress": MessageLookupByLibrary.simpleMessage(
      "You already have an attempt in progress",
    ),
    "quizAutoSubmitted": MessageLookupByLibrary.simpleMessage(
      "Auto-submitted (time expired)",
    ),
    "quizAvailabilityWindow": MessageLookupByLibrary.simpleMessage(
      "Availability Window",
    ),
    "quizCreate": MessageLookupByLibrary.simpleMessage("Create Quiz"),
    "quizDeleteConfirm": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this quiz?",
    ),
    "quizDeleteWithSubmissionsConfirm": MessageLookupByLibrary.simpleMessage(
      "This quiz has submissions. Are you sure you want to delete it?",
    ),
    "quizDescription": MessageLookupByLibrary.simpleMessage("Description"),
    "quizFailed": MessageLookupByLibrary.simpleMessage("Failed"),
    "quizGenerateFromPdf": MessageLookupByLibrary.simpleMessage(
      "Generate from PDF",
    ),
    "quizGenerateFromVideo": MessageLookupByLibrary.simpleMessage(
      "Generate from Video",
    ),
    "quizGenerateFromVoice": MessageLookupByLibrary.simpleMessage(
      "Generate from Voice",
    ),
    "quizPassed": MessageLookupByLibrary.simpleMessage("Passed"),
    "quizPassingScore": MessageLookupByLibrary.simpleMessage(
      "Passing Score (%)",
    ),
    "quizPublish": MessageLookupByLibrary.simpleMessage("Publish"),
    "quizQuestionTypeMcq": MessageLookupByLibrary.simpleMessage(
      "Multiple Choice",
    ),
    "quizQuestionTypeShortAnswer": MessageLookupByLibrary.simpleMessage(
      "Short Answer",
    ),
    "quizQuestionTypeTrueFalse": MessageLookupByLibrary.simpleMessage(
      "True/False",
    ),
    "quizResultOverride": MessageLookupByLibrary.simpleMessage(
      "Override Grade",
    ),
    "quizScoreLabel": MessageLookupByLibrary.simpleMessage("Score"),
    "quizShowAnswers": MessageLookupByLibrary.simpleMessage(
      "Show Answers After Submission",
    ),
    "quizStartAttempt": MessageLookupByLibrary.simpleMessage("Start Quiz"),
    "quizSubmit": MessageLookupByLibrary.simpleMessage("Submit"),
    "quizTimeLimit": MessageLookupByLibrary.simpleMessage(
      "Time Limit (minutes)",
    ),
    "quizTitle": MessageLookupByLibrary.simpleMessage("Quiz Title"),
    "quizUnpublish": MessageLookupByLibrary.simpleMessage("Unpublish"),
    "quizWindowClosed": MessageLookupByLibrary.simpleMessage(
      "This quiz is no longer available",
    ),
    "quiz_maker": MessageLookupByLibrary.simpleMessage("Quiz Maker"),
    "quiz_offline_pending": MessageLookupByLibrary.simpleMessage(
      "Answers saved. Will submit when reconnected",
    ),
    "quiz_setup_num_questions": MessageLookupByLibrary.simpleMessage(
      "Number of questions",
    ),
    "quiz_setup_question_type": MessageLookupByLibrary.simpleMessage(
      "Question type",
    ),
    "quiz_setup_subject": MessageLookupByLibrary.simpleMessage("Subject name"),
    "quizzes": MessageLookupByLibrary.simpleMessage("Quizzes"),
    "reading_material": m12,
    "reminders": MessageLookupByLibrary.simpleMessage("Reminders"),
    "reminders_desc": MessageLookupByLibrary.simpleMessage(
      "Study reminders and scheduled notifications",
    ),
    "resend_button": MessageLookupByLibrary.simpleMessage("Resend"),
    "resend_instruction": MessageLookupByLibrary.simpleMessage(
      "Haven\'t got the confirmation code yet?",
    ),
    "reset": MessageLookupByLibrary.simpleMessage("Reset"),
    "reset_all_preferences": MessageLookupByLibrary.simpleMessage(
      "Reset All Preferences",
    ),
    "reset_everything": MessageLookupByLibrary.simpleMessage(
      "Reset Everything",
    ),
    "reset_everything_desc": MessageLookupByLibrary.simpleMessage(
      "Start over with fresh preferences",
    ),
    "reset_pass_title_page": MessageLookupByLibrary.simpleMessage(
      "Reset Password",
    ),
    "reset_password_button": MessageLookupByLibrary.simpleMessage(
      "Reset Password",
    ),
    "reset_preferences_confirm": MessageLookupByLibrary.simpleMessage(
      "This will delete all your study preferences and generated lessons. You will need to set up your preferences again from scratch.",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "reviews": MessageLookupByLibrary.simpleMessage("Reviews"),
    "role_hint": MessageLookupByLibrary.simpleMessage("Role"),
    "role_student": MessageLookupByLibrary.simpleMessage("Student"),
    "role_teacher": MessageLookupByLibrary.simpleMessage("Teacher"),
    "roles": MessageLookupByLibrary.simpleMessage("Student\nTeacher"),
    "save": MessageLookupByLibrary.simpleMessage("Save"),
    "save_changes": MessageLookupByLibrary.simpleMessage("Save Changes"),
    "save_settings": MessageLookupByLibrary.simpleMessage("Save Settings"),
    "screen_title": MessageLookupByLibrary.simpleMessage("Reset your password"),
    "search_courses_hint": MessageLookupByLibrary.simpleMessage(
      "Search your courses...",
    ),
    "search_languages": MessageLookupByLibrary.simpleMessage(
      "Search languages...",
    ),
    "security": MessageLookupByLibrary.simpleMessage("Security"),
    "security_settings": MessageLookupByLibrary.simpleMessage(
      "Security Settings",
    ),
    "select_academic_stage": MessageLookupByLibrary.simpleMessage(
      "Select Academic Stage",
    ),
    "select_academic_year": MessageLookupByLibrary.simpleMessage(
      "Select Academic Year",
    ),
    "select_date": MessageLookupByLibrary.simpleMessage("Select Date"),
    "select_gender": MessageLookupByLibrary.simpleMessage("Select Gender"),
    "select_option": MessageLookupByLibrary.simpleMessage(
      "Please select an option",
    ),
    "select_section": MessageLookupByLibrary.simpleMessage("Select Section"),
    "settings_saved": MessageLookupByLibrary.simpleMessage(
      "Settings saved successfully!",
    ),
    "settings_title": MessageLookupByLibrary.simpleMessage("Settings"),
    "share": MessageLookupByLibrary.simpleMessage("Share"),
    "shareCourseAction": MessageLookupByLibrary.simpleMessage("Share Course"),
    "shareCourseMessage": m13,
    "share_coming_soon": MessageLookupByLibrary.simpleMessage(
      "Share functionality coming soon",
    ),
    "sign_in_button": MessageLookupByLibrary.simpleMessage("Sign In"),
    "sign_up_prompt": MessageLookupByLibrary.simpleMessage(
      "Don\'t have an account? ",
    ),
    "signin_prompt": MessageLookupByLibrary.simpleMessage(
      "Already have an Account? ",
    ),
    "signup_button": MessageLookupByLibrary.simpleMessage("Sign up"),
    "signup_create_account": MessageLookupByLibrary.simpleMessage(
      "Create your account to get started",
    ),
    "sms_notifications": MessageLookupByLibrary.simpleMessage(
      "SMS Notifications",
    ),
    "sms_notifications_desc": MessageLookupByLibrary.simpleMessage(
      "Receive notifications via SMS",
    ),
    "specialization_hint": MessageLookupByLibrary.simpleMessage(
      "Specialization",
    ),
    "specializations": MessageLookupByLibrary.simpleMessage(
      "Scientific\nScience (Mathematics)\nLiterature",
    ),
    "stale_cache_message": MessageLookupByLibrary.simpleMessage(
      "Showing cached data",
    ),
    "stale_cache_retry": MessageLookupByLibrary.simpleMessage("Refresh"),
    "start_learning_journey": MessageLookupByLibrary.simpleMessage(
      "Start your learning journey today!",
    ),
    "start_time": MessageLookupByLibrary.simpleMessage("Start Time"),
    "stat_all_courses": MessageLookupByLibrary.simpleMessage("All"),
    "stat_completed": MessageLookupByLibrary.simpleMessage("Completed"),
    "stat_in_progress": MessageLookupByLibrary.simpleMessage("In Progress"),
    "streaming_now": MessageLookupByLibrary.simpleMessage("Streaming Now"),
    "student_email_required": MessageLookupByLibrary.simpleMessage(
      "Please use a valid student email (@student.eol.edu)",
    ),
    "students_label": MessageLookupByLibrary.simpleMessage("Students"),
    "study_plan_created": MessageLookupByLibrary.simpleMessage(
      "Study plan created successfully!",
    ),
    "study_plan_updated": MessageLookupByLibrary.simpleMessage(
      "Study plan updated successfully!",
    ),
    "study_preferences": MessageLookupByLibrary.simpleMessage(
      "Study Preferences",
    ),
    "subjects": MessageLookupByLibrary.simpleMessage("Subjects"),
    "submit_answers": MessageLookupByLibrary.simpleMessage("Submit Answers"),
    "subscription_plans": MessageLookupByLibrary.simpleMessage(
      "Subscription Plans",
    ),
    "teacher_doc_delete_confirm": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this document?",
    ),
    "teacher_doc_reupload_approved_warning": MessageLookupByLibrary.simpleMessage(
      "Re-uploading documents will reset your verification status to pending.",
    ),
    "teacher_doc_type_degree": MessageLookupByLibrary.simpleMessage(
      "Degree Certificate",
    ),
    "teacher_doc_type_id_back": MessageLookupByLibrary.simpleMessage(
      "ID (Back)",
    ),
    "teacher_doc_type_id_front": MessageLookupByLibrary.simpleMessage(
      "ID (Front)",
    ),
    "teacher_doc_type_teaching": MessageLookupByLibrary.simpleMessage(
      "Teaching Certificate",
    ),
    "teacher_doc_upload_hint": MessageLookupByLibrary.simpleMessage(
      "Tap to upload",
    ),
    "teacher_doc_upload_retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "teacher_doc_upload_success": MessageLookupByLibrary.simpleMessage(
      "Uploaded",
    ),
    "teacher_documents_subtitle": MessageLookupByLibrary.simpleMessage(
      "Upload the required documents to verify your account",
    ),
    "teacher_documents_title": MessageLookupByLibrary.simpleMessage(
      "Verification Documents",
    ),
    "teacher_documents_view_placeholder": MessageLookupByLibrary.simpleMessage(
      "Documents View - Coming Soon",
    ),
    "teacher_email_required": MessageLookupByLibrary.simpleMessage(
      "Please use a valid teacher email (@teacher.eol.edu)",
    ),
    "teacher_onboarding_step_documents": MessageLookupByLibrary.simpleMessage(
      "Documents",
    ),
    "teacher_onboarding_step_profile": MessageLookupByLibrary.simpleMessage(
      "Profile",
    ),
    "teacher_onboarding_step_verification":
        MessageLookupByLibrary.simpleMessage("Verification"),
    "teacher_onboarding_title": MessageLookupByLibrary.simpleMessage(
      "Complete Your Profile",
    ),
    "teacher_profile_bio": MessageLookupByLibrary.simpleMessage("Bio"),
    "teacher_profile_bio_error_long": MessageLookupByLibrary.simpleMessage(
      "Bio cannot exceed 200 characters",
    ),
    "teacher_profile_bio_error_short": MessageLookupByLibrary.simpleMessage(
      "Bio must be at least 10 characters",
    ),
    "teacher_profile_bio_hint": MessageLookupByLibrary.simpleMessage(
      "Tell students about yourself (10–200 characters)",
    ),
    "teacher_profile_date_of_birth": MessageLookupByLibrary.simpleMessage(
      "Date of Birth",
    ),
    "teacher_profile_dob_error_age": MessageLookupByLibrary.simpleMessage(
      "You must be at least 23 years old",
    ),
    "teacher_profile_fill_to_preview": MessageLookupByLibrary.simpleMessage(
      "Fill the form to preview your profile",
    ),
    "teacher_profile_full_name": MessageLookupByLibrary.simpleMessage(
      "Full Name",
    ),
    "teacher_profile_gender": MessageLookupByLibrary.simpleMessage("Gender"),
    "teacher_profile_not_available": MessageLookupByLibrary.simpleMessage(
      "Not available",
    ),
    "teacher_profile_not_verified": MessageLookupByLibrary.simpleMessage(
      "Not yet verified",
    ),
    "teacher_profile_saved": MessageLookupByLibrary.simpleMessage(
      "Profile saved successfully",
    ),
    "teacher_profile_specialization": MessageLookupByLibrary.simpleMessage(
      "Specialization",
    ),
    "teacher_profile_subject": MessageLookupByLibrary.simpleMessage(
      "Teaching Subject",
    ),
    "teacher_profile_teaching_level": MessageLookupByLibrary.simpleMessage(
      "Teaching Level",
    ),
    "teacher_profile_years_experience": MessageLookupByLibrary.simpleMessage(
      "Years of Experience",
    ),
    "teacher_public_profile_details": MessageLookupByLibrary.simpleMessage(
      "Details",
    ),
    "teacher_public_profile_students": MessageLookupByLibrary.simpleMessage(
      "students",
    ),
    "teacher_public_profile_title": MessageLookupByLibrary.simpleMessage(
      "Teacher Profile",
    ),
    "teacher_verification_approved": MessageLookupByLibrary.simpleMessage(
      "Your account has been verified",
    ),
    "teacher_verification_approved_subtitle":
        MessageLookupByLibrary.simpleMessage(
          "Your account is verified. You can now publish courses.",
        ),
    "teacher_verification_complete_profile_first":
        MessageLookupByLibrary.simpleMessage(
          "Complete profile and upload all required documents to submit.",
        ),
    "teacher_verification_not_verified": MessageLookupByLibrary.simpleMessage(
      "Not Verified",
    ),
    "teacher_verification_pending": MessageLookupByLibrary.simpleMessage(
      "Your verification is pending review",
    ),
    "teacher_verification_pending_subtitle":
        MessageLookupByLibrary.simpleMessage(
          "We\'ll notify you when your account is reviewed.",
        ),
    "teacher_verification_rejected": MessageLookupByLibrary.simpleMessage(
      "Verification Rejected",
    ),
    "teacher_verification_rejected_reason": m14,
    "teacher_verification_resubmit": MessageLookupByLibrary.simpleMessage(
      "Re-submit for Verification",
    ),
    "teacher_verification_status_unavailable":
        MessageLookupByLibrary.simpleMessage("Status Unavailable"),
    "teacher_verification_submit": MessageLookupByLibrary.simpleMessage(
      "Submit for Verification",
    ),
    "teacher_verification_submitted": MessageLookupByLibrary.simpleMessage(
      "Verification submitted successfully",
    ),
    "teacher_verification_unverified_subtitle":
        MessageLookupByLibrary.simpleMessage(
          "Fill in your profile, upload the required documents, then submit for verification to start publishing courses.",
        ),
    "teacher_verification_unverified_title":
        MessageLookupByLibrary.simpleMessage("Complete Your Verification"),
    "teacher_verification_view_placeholder":
        MessageLookupByLibrary.simpleMessage("Verification View - Coming Soon"),
    "terms_and_conditions": MessageLookupByLibrary.simpleMessage(
      "Terms & Conditions",
    ),
    "tip_text": MessageLookupByLibrary.simpleMessage(
      "Here\'s a tip: Use a combination of\nNumbers, Uppercase, Lowercase and\nSpecial characters",
    ),
    "to_label": MessageLookupByLibrary.simpleMessage("To"),
    "top_mentors": MessageLookupByLibrary.simpleMessage("Top Mentors"),
    "two_factor_auth": MessageLookupByLibrary.simpleMessage(
      "Two-Factor Authentication",
    ),
    "two_factor_desc": MessageLookupByLibrary.simpleMessage(
      "Add an extra layer of security",
    ),
    "untitled": MessageLookupByLibrary.simpleMessage("Untitled"),
    "untitled_note": MessageLookupByLibrary.simpleMessage("Untitled Note"),
    "update_body": MessageLookupByLibrary.simpleMessage(
      "A new version of EOL is available. Update now for the latest features.",
    ),
    "update_button": MessageLookupByLibrary.simpleMessage("Update Now"),
    "update_later": MessageLookupByLibrary.simpleMessage("Later"),
    "update_password_desc": MessageLookupByLibrary.simpleMessage(
      "Update your account password",
    ),
    "update_ready": MessageLookupByLibrary.simpleMessage(
      "Update ready to install",
    ),
    "update_title": MessageLookupByLibrary.simpleMessage("Update Available"),
    "uploading_pdf": MessageLookupByLibrary.simpleMessage("Uploading PDF..."),
    "username_invalid_chars": MessageLookupByLibrary.simpleMessage(
      "Username can only contain letters, numbers, and underscores",
    ),
    "username_label": MessageLookupByLibrary.simpleMessage("Username"),
    "username_min_length": MessageLookupByLibrary.simpleMessage(
      "Username must be at least 3 characters",
    ),
    "valid_email": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid email address",
    ),
    "valid_full_name": MessageLookupByLibrary.simpleMessage(
      "Please enter your full name (at least 2 names)",
    ),
    "valid_phone_number": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid phone number",
    ),
    "verification_code_has_been_sent_to": MessageLookupByLibrary.simpleMessage(
      "Verification code has been sent to",
    ),
    "verify_button": MessageLookupByLibrary.simpleMessage("Verify"),
    "video_quiz": MessageLookupByLibrary.simpleMessage("Video Quiz"),
    "voice_quiz": MessageLookupByLibrary.simpleMessage("Voice Quiz"),
    "warning": MessageLookupByLibrary.simpleMessage("Warning"),
    "welcome_messagewelcome_message": MessageLookupByLibrary.simpleMessage(
      "Welcome. Let\'s start by creating your\naccount or sign in if you already have one",
    ),
    "words_count": m15,
    "year_hint": MessageLookupByLibrary.simpleMessage("Year"),
    "years": MessageLookupByLibrary.simpleMessage(
      "First Year\nSecond Year\nThird Year",
    ),
    "yesterday": MessageLookupByLibrary.simpleMessage("Yesterday"),
    "your_name": MessageLookupByLibrary.simpleMessage("Your Name"),
    "your_score": MessageLookupByLibrary.simpleMessage("Your Score"),
  };
}
