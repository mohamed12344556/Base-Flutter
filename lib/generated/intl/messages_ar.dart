// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(count) => "${count} حرف";

  static String m1(count) => "منذ ${count} يوم";

  static String m2(count) => "منذ ${count} ساعة";

  static String m3(time) => "آخر تعديل: ${time}";

  static String m4(time) => "آخر تحديث منذ ${time}";

  static String m5(current, total) => "المحاضرة ${current} من ${total}";

  static String m6(count) => "${count} دروس متبقية";

  static String m7(count) => "منذ ${count} دقيقة";

  static String m8(day) => "لا توجد أحداث يوم ${day}";

  static String m9(day) => "لا توجد دروس يوم ${day}";

  static String m10(field) => "يرجى إدخال ${field}";

  static String m11(current, total) => "السؤال ${current} من ${total}";

  static String m12(index) => "مادة القراءة ${index}";

  static String m13(courseTitle, teacherName, shareUrl) =>
      "${courseTitle} — بواسطة ${teacherName}\n\n${shareUrl}";

  static String m14(reason) => "تم رفض التحقق: ${reason}";

  static String m15(count) => "${count} كلمة";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about": MessageLookupByLibrary.simpleMessage("حول"),
    "academic_info": MessageLookupByLibrary.simpleMessage(
      "المعلومات الأكاديمية",
    ),
    "academic_section_hint": MessageLookupByLibrary.simpleMessage(
      "الشعبة الدراسية",
    ),
    "academic_stage_hint": MessageLookupByLibrary.simpleMessage(
      "المرحلة الدراسية",
    ),
    "academic_year_hint": MessageLookupByLibrary.simpleMessage(
      "السنة الدراسية",
    ),
    "account_management": MessageLookupByLibrary.simpleMessage("إدارة الحساب"),
    "account_section": MessageLookupByLibrary.simpleMessage("الحساب"),
    "active_sessions": MessageLookupByLibrary.simpleMessage("الجلسات النشطة"),
    "active_sessions_desc": MessageLookupByLibrary.simpleMessage(
      "إدارة جلسات تسجيل الدخول النشطة",
    ),
    "ad_explore_more": MessageLookupByLibrary.simpleMessage("اكتشف المزيد ←"),
    "ad_label": MessageLookupByLibrary.simpleMessage("إعلان"),
    "add_event": MessageLookupByLibrary.simpleMessage("إضافة حدث"),
    "add_new_event": MessageLookupByLibrary.simpleMessage("إضافة حدث جديد"),
    "add_note_position": MessageLookupByLibrary.simpleMessage(
      "إضافة ملاحظة في الموضع الحالي...",
    ),
    "ai_chat": MessageLookupByLibrary.simpleMessage("محادثة ذكية"),
    "ai_service_error": MessageLookupByLibrary.simpleMessage(
      "خدمة الذكاء الاصطناعي غير متاحة مؤقتاً. حاول مجدداً.",
    ),
    "ai_tools": MessageLookupByLibrary.simpleMessage("أدوات الذكاء الاصطناعي"),
    "all_filter": MessageLookupByLibrary.simpleMessage("الكل"),
    "an_error_occurred": MessageLookupByLibrary.simpleMessage("حدث خطأ"),
    "app_title": MessageLookupByLibrary.simpleMessage("EOL"),
    "apple_sign_in": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول باستخدام Apple",
    ),
    "apply_changes": MessageLookupByLibrary.simpleMessage("تطبيق التغييرات"),
    "ask_math_question": MessageLookupByLibrary.simpleMessage(
      "اطرح سؤالاً في الرياضيات أو الفيزياء...",
    ),
    "ask_me_anything": MessageLookupByLibrary.simpleMessage("اسألني أي شيء..."),
    "assignments": MessageLookupByLibrary.simpleMessage("الواجبات"),
    "assignments_desc": MessageLookupByLibrary.simpleMessage(
      "مواعيد تسليم الواجبات والتذكيرات",
    ),
    "auto_logout": MessageLookupByLibrary.simpleMessage(
      "تسجيل الخروج التلقائي",
    ),
    "auto_logout_desc": MessageLookupByLibrary.simpleMessage(
      "تسجيل الخروج تلقائياً بعد 30 دقيقة",
    ),
    "biometric_desc": MessageLookupByLibrary.simpleMessage(
      "استخدام بصمة الإصبع أو التعرف على الوجه",
    ),
    "biometric_failed": MessageLookupByLibrary.simpleMessage(
      "فشل التحقق البيومتري. يرجى المحاولة مرة أخرى.",
    ),
    "biometric_locked_out": MessageLookupByLibrary.simpleMessage(
      "محاولات كثيرة فاشلة. يرجى تسجيل الدخول مجدداً.",
    ),
    "biometric_login": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول البيومتري",
    ),
    "biometric_login_button": MessageLookupByLibrary.simpleMessage(
      "الدخول بالبصمة",
    ),
    "biometric_reason": MessageLookupByLibrary.simpleMessage(
      "أكّد هويتك للوصول إلى EOL",
    ),
    "biometric_reason_cancel_subscription":
        MessageLookupByLibrary.simpleMessage("أكد هويتك لإلغاء الاشتراك"),
    "biometric_reason_delete_account": MessageLookupByLibrary.simpleMessage(
      "أكد هويتك لحذف حسابك",
    ),
    "biometric_reason_login": MessageLookupByLibrary.simpleMessage(
      "أكد هويتك لتسجيل الدخول",
    ),
    "browseCourses": MessageLookupByLibrary.simpleMessage("تصفح الدورات"),
    "browse_courses": MessageLookupByLibrary.simpleMessage("تصفح الكورسات"),
    "button_continue": MessageLookupByLibrary.simpleMessage("متابعة"),
    "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "change_password": MessageLookupByLibrary.simpleMessage(
      "تغيير كلمة المرور",
    ),
    "change_password_redirect": MessageLookupByLibrary.simpleMessage(
      "سيتم توجيهك لتغيير كلمة المرور.",
    ),
    "characters_count": m0,
    "chat_pdf": MessageLookupByLibrary.simpleMessage("محادثة PDF"),
    "check_back_soon": MessageLookupByLibrary.simpleMessage("تحقق لاحقاً!"),
    "check_back_trending": MessageLookupByLibrary.simpleMessage(
      "تحقق لاحقاً من الكورسات الرائجة!",
    ),
    "choose_question_detail": MessageLookupByLibrary.simpleMessage(
      "اختر سؤالاً لعرض التفاصيل",
    ),
    "classroomClosed": MessageLookupByLibrary.simpleMessage(
      "هذا الفصل مغلق حالياً",
    ),
    "classroomEmpty": MessageLookupByLibrary.simpleMessage(
      "لا توجد رسائل بعد. ابدأ المحادثة!",
    ),
    "classroomFileTooLarge": MessageLookupByLibrary.simpleMessage(
      "حجم الملف يجب أن يكون أقل من 25 ميجابايت",
    ),
    "classroomOffline": MessageLookupByLibrary.simpleMessage(
      "أنت غير متصل. سيتم إرسال الرسالة عند الاتصال",
    ),
    "classroomPinned": MessageLookupByLibrary.simpleMessage("رسالة مثبتة"),
    "classroomRecording": MessageLookupByLibrary.simpleMessage(
      "جاري التسجيل... اسحب للأعلى للإلغاء",
    ),
    "classroomRemoved": MessageLookupByLibrary.simpleMessage(
      "تمت إزالتك من هذه الفصل",
    ),
    "classroomReply": MessageLookupByLibrary.simpleMessage("رد"),
    "classroomTyping": MessageLookupByLibrary.simpleMessage("يكتب..."),
    "classroomUnsupportedFileType": MessageLookupByLibrary.simpleMessage(
      "نوع الملف هذا غير مسموح",
    ),
    "code_tutor": MessageLookupByLibrary.simpleMessage("مدرس البرمجة"),
    "color_label": MessageLookupByLibrary.simpleMessage("اللون"),
    "coming_soon": MessageLookupByLibrary.simpleMessage("قريباً!"),
    "confirm_password_label": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "continue_label": MessageLookupByLibrary.simpleMessage("متابعة"),
    "continue_learning": MessageLookupByLibrary.simpleMessage("متابعة التعلم"),
    "continue_with": MessageLookupByLibrary.simpleMessage(
      "أو المتابعة باستخدام",
    ),
    "courseUnavailable": MessageLookupByLibrary.simpleMessage(
      "هذه الدورة لم تعد متاحة",
    ),
    "course_content": MessageLookupByLibrary.simpleMessage("محتوى الكورس"),
    "course_enrollment": MessageLookupByLibrary.simpleMessage(
      "التسجيل في الكورس",
    ),
    "course_updates": MessageLookupByLibrary.simpleMessage("تحديثات الكورسات"),
    "course_updates_desc": MessageLookupByLibrary.simpleMessage(
      "كورسات جديدة وتحديثات وإعلانات",
    ),
    "courses": MessageLookupByLibrary.simpleMessage("الكورسات"),
    "create_first_note": MessageLookupByLibrary.simpleMessage(
      "أنشئ ملاحظتك الأولى",
    ),
    "create_first_note_description": MessageLookupByLibrary.simpleMessage(
      "أضف ملاحظة عن أي شيء (أفكارك حول تغير المناخ أو مقالك في التاريخ) وشاركها مع العالم.",
    ),
    "create_new_plan_desc": MessageLookupByLibrary.simpleMessage(
      "إنشاء خطة دراسية جديدة بالتفضيلات الحالية",
    ),
    "create_note": MessageLookupByLibrary.simpleMessage("إنشاء ملاحظة"),
    "credit_card": MessageLookupByLibrary.simpleMessage("بطاقة ائتمان"),
    "credit_card_desc": MessageLookupByLibrary.simpleMessage(
      "Visa, MasterCard, American Express",
    ),
    "current_language": MessageLookupByLibrary.simpleMessage("اللغة الحالية"),
    "dark_mode": MessageLookupByLibrary.simpleMessage("الوضع الداكن"),
    "date_of_birth_label": MessageLookupByLibrary.simpleMessage(
      "تاريخ الميلاد",
    ),
    "days_ago": m1,
    "delete": MessageLookupByLibrary.simpleMessage("حذف"),
    "delete_account": MessageLookupByLibrary.simpleMessage("حذف الحساب"),
    "delete_account_confirm": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد من حذف حسابك؟ لا يمكن التراجع عن هذا الإجراء.",
    ),
    "delete_account_desc": MessageLookupByLibrary.simpleMessage(
      "حذف حسابك نهائياً",
    ),
    "delete_event": MessageLookupByLibrary.simpleMessage("حذف الحدث"),
    "delete_note": MessageLookupByLibrary.simpleMessage("حذف الملاحظة"),
    "delete_note_confirm": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد من حذف هذه الملاحظة؟ لا يمكن التراجع عن هذا الإجراء.",
    ),
    "download_data": MessageLookupByLibrary.simpleMessage("تحميل بياناتي"),
    "download_data_desc": MessageLookupByLibrary.simpleMessage(
      "تحميل جميع بيانات حسابك",
    ),
    "draft": MessageLookupByLibrary.simpleMessage("مسودة"),
    "edit": MessageLookupByLibrary.simpleMessage("تعديل"),
    "edit_note": MessageLookupByLibrary.simpleMessage("تعديل الملاحظة"),
    "edit_preferences": MessageLookupByLibrary.simpleMessage("تعديل التفضيلات"),
    "edit_profile": MessageLookupByLibrary.simpleMessage("تعديل الملف الشخصي"),
    "eg_currency": MessageLookupByLibrary.simpleMessage("ج.م"),
    "email_label": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "email_notifications": MessageLookupByLibrary.simpleMessage(
      "إشعارات البريد الإلكتروني",
    ),
    "email_notifications_desc": MessageLookupByLibrary.simpleMessage(
      "تلقي الإشعارات عبر البريد الإلكتروني",
    ),
    "email_placeholder_student": MessageLookupByLibrary.simpleMessage(
      "student@student.eol.edu",
    ),
    "email_placeholder_teacher": MessageLookupByLibrary.simpleMessage(
      "teacher@teacher.eol.edu",
    ),
    "email_required": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني مطلوب",
    ),
    "empty_community": MessageLookupByLibrary.simpleMessage(
      "لا توجد أسئلة بعد",
    ),
    "empty_courses": MessageLookupByLibrary.simpleMessage("لا توجد دورات بعد"),
    "empty_generic": MessageLookupByLibrary.simpleMessage(
      "لا يوجد شيء هنا بعد",
    ),
    "empty_my_courses_subtitle": MessageLookupByLibrary.simpleMessage(
      "ابدأ التعلم بالتسجيل في كورس",
    ),
    "empty_my_courses_title": MessageLookupByLibrary.simpleMessage(
      "لا توجد كورسات بعد",
    ),
    "empty_notes": MessageLookupByLibrary.simpleMessage("لا توجد ملاحظات بعد"),
    "empty_notifications": MessageLookupByLibrary.simpleMessage(
      "لا توجد إشعارات بعد",
    ),
    "enable_quiet_hours": MessageLookupByLibrary.simpleMessage(
      "تفعيل ساعات الهدوء",
    ),
    "end_time": MessageLookupByLibrary.simpleMessage("وقت الانتهاء"),
    "enroll_now": MessageLookupByLibrary.simpleMessage("سجل الآن"),
    "enter_your_email": MessageLookupByLibrary.simpleMessage(
      "أدخل بريدك الإلكتروني",
    ),
    "enter_your_phone": MessageLookupByLibrary.simpleMessage("أدخل رقم هاتفك"),
    "error_auth": MessageLookupByLibrary.simpleMessage(
      "انتهت صلاحية جلستك. يرجى تسجيل الدخول مرة أخرى",
    ),
    "error_completing_onboarding": MessageLookupByLibrary.simpleMessage(
      "خطأ في إكمال الإعداد الأولي",
    ),
    "error_generic": MessageLookupByLibrary.simpleMessage("حدث خطأ ما"),
    "error_generic_subtitle": MessageLookupByLibrary.simpleMessage(
      "واجهنا خطأً غير متوقع. يرجى المحاولة مرة أخرى",
    ),
    "error_go_back": MessageLookupByLibrary.simpleMessage("العودة"),
    "error_loading_note": MessageLookupByLibrary.simpleMessage(
      "خطأ في تحميل الملاحظة",
    ),
    "error_network": MessageLookupByLibrary.simpleMessage(
      "لا يوجد اتصال بالإنترنت. تحقق من اتصالك وحاول مجدداً.",
    ),
    "error_no_internet": MessageLookupByLibrary.simpleMessage(
      "لا يوجد اتصال بالإنترنت",
    ),
    "error_no_internet_subtitle": MessageLookupByLibrary.simpleMessage(
      "يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى",
    ),
    "error_not_found": MessageLookupByLibrary.simpleMessage("غير موجود"),
    "error_offline_content_expired": MessageLookupByLibrary.simpleMessage(
      "هذا المحتوى غير متاح بدون اتصال",
    ),
    "error_quiz_alreadyInProgress": MessageLookupByLibrary.simpleMessage(
      "لديك محاولة قيد التنفيذ",
    ),
    "error_quiz_alreadySubmitted": MessageLookupByLibrary.simpleMessage(
      "تم إرسال هذا الاختبار بالفعل",
    ),
    "error_quiz_attemptExpired": MessageLookupByLibrary.simpleMessage(
      "انتهت محاولة الاختبار الخاصة بك",
    ),
    "error_quiz_attemptWindowClosed": MessageLookupByLibrary.simpleMessage(
      "انتهت فترة محاولة الاختبار",
    ),
    "error_quiz_attemptsExhausted": MessageLookupByLibrary.simpleMessage(
      "لا مزيد من المحاولات مسموحة",
    ),
    "error_quiz_enrollmentRequired": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون مسجلاً لأخذ هذا الاختبار",
    ),
    "error_quiz_hasSubmissions": MessageLookupByLibrary.simpleMessage(
      "هذا الاختبار لديه إجابات ولا يمكن حذفه",
    ),
    "error_quiz_questionsLockedAfterFirstSubmission":
        MessageLookupByLibrary.simpleMessage(
          "لا يمكن تغيير الأسئلة بعد أول إجابة",
        ),
    "error_quiz_quizNotAvailable": MessageLookupByLibrary.simpleMessage(
      "هذا الاختبار غير متاح",
    ),
    "error_retry": MessageLookupByLibrary.simpleMessage("حاول مجددًا"),
    "error_server": MessageLookupByLibrary.simpleMessage("خطأ في الخادم"),
    "error_server_subtitle": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ ما. نحن نعمل على إصلاحه",
    ),
    "error_timeout": MessageLookupByLibrary.simpleMessage("انتهت مهلة الطلب"),
    "error_timeout_subtitle": MessageLookupByLibrary.simpleMessage(
      "استغرق الطلب وقتًا طويلًا. يرجى المحاولة مرة أخرى",
    ),
    "error_unauthorized": MessageLookupByLibrary.simpleMessage("تم رفض الوصول"),
    "error_unknown": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ غير متوقع. يرجى المحاولة مجدداً.",
    ),
    "error_validation": MessageLookupByLibrary.simpleMessage(
      "يرجى التحقق من الحقول المُحددة والمحاولة مجدداً.",
    ),
    "event_title_label": MessageLookupByLibrary.simpleMessage("عنوان الحدث"),
    "exp_label": MessageLookupByLibrary.simpleMessage("خبرة"),
    "explore_all": MessageLookupByLibrary.simpleMessage("استكشاف الكل"),
    "extracting_video": MessageLookupByLibrary.simpleMessage(
      "جاري استخراج محتوى الفيديو...",
    ),
    "failed_to_load_video": MessageLookupByLibrary.simpleMessage(
      "فشل في تحميل الفيديو",
    ),
    "female": MessageLookupByLibrary.simpleMessage("أنثى"),
    "field_required": MessageLookupByLibrary.simpleMessage("هذا الحقل مطلوب"),
    "first_review": MessageLookupByLibrary.simpleMessage(
      "كن أول من يترك تقييماً لهذه المحاضرة!",
    ),
    "force_update_body": MessageLookupByLibrary.simpleMessage(
      "هذا الإصدار من EOL لم يعد مدعوماً. يرجى التحديث للمتابعة.",
    ),
    "force_update_button": MessageLookupByLibrary.simpleMessage(
      "تحديث للمتابعة",
    ),
    "force_update_title": MessageLookupByLibrary.simpleMessage("تحديث مطلوب"),
    "forget_pass_title_page": MessageLookupByLibrary.simpleMessage(
      "نسيت كلمة المرور",
    ),
    "forgot_password": MessageLookupByLibrary.simpleMessage(
      "هل نسيت كلمة المرور؟",
    ),
    "forgot_password_remember": MessageLookupByLibrary.simpleMessage(
      "تتذكر كلمة المرور؟ ",
    ),
    "free_filter": MessageLookupByLibrary.simpleMessage("مجاني"),
    "free_label": MessageLookupByLibrary.simpleMessage("مجاني"),
    "from_label": MessageLookupByLibrary.simpleMessage("من"),
    "full_name_label": MessageLookupByLibrary.simpleMessage("الاسم الكامل"),
    "gender_female": MessageLookupByLibrary.simpleMessage("أنثى"),
    "gender_male": MessageLookupByLibrary.simpleMessage("ذكر"),
    "generate_new_plan": MessageLookupByLibrary.simpleMessage(
      "إنشاء خطة جديدة",
    ),
    "generate_quiz": MessageLookupByLibrary.simpleMessage("إنشاء الاختبار"),
    "generating_plan_desc": MessageLookupByLibrary.simpleMessage(
      "الذكاء الاصطناعي يحلل تفضيلاتك وينشئ جدول دراسة مخصص",
    ),
    "generating_plan_title": MessageLookupByLibrary.simpleMessage(
      "جاري إنشاء خطتك الدراسية المخصصة...",
    ),
    "generating_quiz": MessageLookupByLibrary.simpleMessage(
      "جاري إنشاء الاختبار...",
    ),
    "go_back": MessageLookupByLibrary.simpleMessage("رجوع"),
    "google_sign_in": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول باستخدام Google",
    ),
    "help_center": MessageLookupByLibrary.simpleMessage("مركز المساعدة"),
    "home": MessageLookupByLibrary.simpleMessage("الصفحة الرئيسية"),
    "hours_ago": m2,
    "image_download_coming_soon": MessageLookupByLibrary.simpleMessage(
      "ميزة تحميل الصور قادمة قريباً!",
    ),
    "image_share_coming_soon": MessageLookupByLibrary.simpleMessage(
      "ميزة مشاركة الصور قادمة قريباً!",
    ),
    "instruction_text": MessageLookupByLibrary.simpleMessage(
      "اختر بيانات الاتصال التي نستخدمها لإعادة تعيين كلمة المرور",
    ),
    "invalid_email_format": MessageLookupByLibrary.simpleMessage(
      "تنسيق البريد الإلكتروني غير صالح",
    ),
    "invalid_payment_data": MessageLookupByLibrary.simpleMessage(
      "بيانات الدفع غير صالحة",
    ),
    "invalid_preferences_data": MessageLookupByLibrary.simpleMessage(
      "بيانات التفضيلات غير صالحة",
    ),
    "invalid_youtube_url": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال رابط يوتيوب صحيح.",
    ),
    "invite_email_hint": MessageLookupByLibrary.simpleMessage(
      "أدخل عنوان البريد الإلكتروني لصديقك",
    ),
    "invite_friends": MessageLookupByLibrary.simpleMessage("دعوة الأصدقاء"),
    "just_now": MessageLookupByLibrary.simpleMessage("الآن"),
    "language": MessageLookupByLibrary.simpleMessage("اللغة"),
    "language_changed": MessageLookupByLibrary.simpleMessage(
      "تم تغيير اللغة بنجاح",
    ),
    "language_settings": MessageLookupByLibrary.simpleMessage("إعدادات اللغة"),
    "last_modified": m3,
    "last_updated_ago": m4,
    "lecture_of": m5,
    "lessons": MessageLookupByLibrary.simpleMessage("الدروس"),
    "lessons_appear_here": MessageLookupByLibrary.simpleMessage(
      "ستظهر دروس هذه الدورة هنا.",
    ),
    "lessons_left": m6,
    "loading_preferences": MessageLookupByLibrary.simpleMessage(
      "جاري تحميل تفضيلاتك...",
    ),
    "login_alerts": MessageLookupByLibrary.simpleMessage(
      "تنبيهات تسجيل الدخول",
    ),
    "login_alerts_desc": MessageLookupByLibrary.simpleMessage(
      "احصل على إشعار عند محاولات تسجيل الدخول الجديدة",
    ),
    "login_button": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "login_cancelled": MessageLookupByLibrary.simpleMessage(
      "تم إلغاء تسجيل الدخول",
    ),
    "login_failed": MessageLookupByLibrary.simpleMessage(
      "فشل تسجيل الدخول. يرجى المحاولة مرة أخرى",
    ),
    "login_required": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول مطلوب",
    ),
    "login_success": MessageLookupByLibrary.simpleMessage(
      "تم تسجيل الدخول بنجاح",
    ),
    "login_welcome_back": MessageLookupByLibrary.simpleMessage(
      "مرحباً بعودتك! يرجى تسجيل الدخول للمتابعة.",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "male": MessageLookupByLibrary.simpleMessage("ذكر"),
    "materials": MessageLookupByLibrary.simpleMessage("المواد"),
    "materials_appear_here": MessageLookupByLibrary.simpleMessage(
      "ستظهر الموارد المرفقة بهذه المحاضرة هنا.",
    ),
    "message_deleted": MessageLookupByLibrary.simpleMessage(
      "🗑️ تم حذف الرسالة",
    ),
    "messages": MessageLookupByLibrary.simpleMessage("الرسائل"),
    "messages_desc": MessageLookupByLibrary.simpleMessage(
      "رسائل جديدة من المدرسين والزملاء",
    ),
    "min_ago": m7,
    "modify_preferences_desc": MessageLookupByLibrary.simpleMessage(
      "تعديل تفضيلات دراستك الحالية",
    ),
    "more_section": MessageLookupByLibrary.simpleMessage("المزيد"),
    "my_courses": MessageLookupByLibrary.simpleMessage("كورساتي"),
    "my_plan": MessageLookupByLibrary.simpleMessage("خطتي"),
    "name_min_length": MessageLookupByLibrary.simpleMessage(
      "يجب أن يتكون الاسم من كلمتين على الأقل",
    ),
    "new_label": MessageLookupByLibrary.simpleMessage("جديد"),
    "new_note": MessageLookupByLibrary.simpleMessage("ملاحظة جديدة"),
    "nickname_label": MessageLookupByLibrary.simpleMessage("اللقب"),
    "no_courses_found": MessageLookupByLibrary.simpleMessage(
      "لم يتم العثور على كورسات",
    ),
    "no_courses_yet": MessageLookupByLibrary.simpleMessage(
      "لا توجد كورسات بعد",
    ),
    "no_events_on": m8,
    "no_events_today": MessageLookupByLibrary.simpleMessage(
      "لا توجد أحداث اليوم",
    ),
    "no_lessons_on": m9,
    "no_lessons_today": MessageLookupByLibrary.simpleMessage(
      "لا توجد دروس اليوم",
    ),
    "no_lessons_yet": MessageLookupByLibrary.simpleMessage("لا توجد دروس بعد"),
    "no_materials": MessageLookupByLibrary.simpleMessage("لا توجد مواد"),
    "no_mentors_available": MessageLookupByLibrary.simpleMessage(
      "لا يوجد معلمون متاحون",
    ),
    "no_notes": MessageLookupByLibrary.simpleMessage("لا توجد ملاحظات"),
    "no_notes_added": MessageLookupByLibrary.simpleMessage(
      "لم تتم إضافة ملاحظات",
    ),
    "no_notifications": MessageLookupByLibrary.simpleMessage("لا توجد إشعارات"),
    "no_notifications_yet": MessageLookupByLibrary.simpleMessage(
      "ليس لديك أي إشعارات حتى الآن",
    ),
    "no_place": MessageLookupByLibrary.simpleMessage("لا يوجد مكان"),
    "no_popular_courses": MessageLookupByLibrary.simpleMessage(
      "لا توجد كورسات شائعة متاحة",
    ),
    "no_reviews_yet": MessageLookupByLibrary.simpleMessage(
      "لا توجد تقييمات بعد",
    ),
    "no_subjects_available": MessageLookupByLibrary.simpleMessage(
      "لا توجد مواد متاحة",
    ),
    "no_unread_notifications": MessageLookupByLibrary.simpleMessage(
      "لا توجد إشعارات غير مقروءة",
    ),
    "no_video_available": MessageLookupByLibrary.simpleMessage(
      "لا يوجد فيديو متاح",
    ),
    "note_content_hint": MessageLookupByLibrary.simpleMessage(
      "ابدأ بكتابة أفكارك...",
    ),
    "note_deleted": MessageLookupByLibrary.simpleMessage(
      "تم حذف الملاحظة بنجاح",
    ),
    "note_empty_content": MessageLookupByLibrary.simpleMessage(
      "يرجى إضافة محتوى إلى ملاحظتك",
    ),
    "note_not_found": MessageLookupByLibrary.simpleMessage(
      "الملاحظة غير موجودة",
    ),
    "note_save_failed": MessageLookupByLibrary.simpleMessage(
      "فشل في حفظ الملاحظة",
    ),
    "note_saved": MessageLookupByLibrary.simpleMessage("تم حفظ الملاحظة بنجاح"),
    "note_title_hint": MessageLookupByLibrary.simpleMessage("عنوان الملاحظة"),
    "note_updated": MessageLookupByLibrary.simpleMessage(
      "تم تحديث الملاحظة بنجاح",
    ),
    "notes": MessageLookupByLibrary.simpleMessage("الملاحظات"),
    "notes_appear_here": MessageLookupByLibrary.simpleMessage(
      "سيتم حفظ ملاحظاتك الشخصية لهذه المحاضرة هنا.",
    ),
    "notes_label": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "notes_title": MessageLookupByLibrary.simpleMessage("الملاحظات"),
    "notification_methods": MessageLookupByLibrary.simpleMessage(
      "طرق الإشعارات",
    ),
    "notification_types": MessageLookupByLibrary.simpleMessage(
      "أنواع الإشعارات",
    ),
    "notifications_settings": MessageLookupByLibrary.simpleMessage(
      "إعدادات الإشعارات",
    ),
    "onboarding_ai_assistant_subtitle": MessageLookupByLibrary.simpleMessage(
      "احصل على مساعدة فورية وتوجيه شخصي من مساعدنا الذكي الذكي، المتاح كلما احتجت إليه.",
    ),
    "onboarding_ai_assistant_title": MessageLookupByLibrary.simpleMessage(
      "مساعد الذكاء الاصطناعي 24/7",
    ),
    "onboarding_ai_powered_subtitle": MessageLookupByLibrary.simpleMessage(
      "مسارات تعلم مخصصة وحل فوري للشكوك مدعوم بتقنية الذكاء الاصطناعي المتقدمة.",
    ),
    "onboarding_ai_powered_title": MessageLookupByLibrary.simpleMessage(
      "مدعوم بالذكاء الاصطناعي",
    ),
    "onboarding_best_learn_subtitle": MessageLookupByLibrary.simpleMessage(
      "اكتشف الطريقة الأكثر فعالية للتعلم مع منصتنا المبتكرة المصممة للمتعلمين العصريين.",
    ),
    "onboarding_best_learn_title": MessageLookupByLibrary.simpleMessage(
      "أفضل التعلم",
    ),
    "onboarding_get_started": MessageLookupByLibrary.simpleMessage("ابدأ الآن"),
    "onboarding_share_with_community_subtitle":
        MessageLookupByLibrary.simpleMessage(
          "تواصل مع المتعلمين الآخرين، شارك تقدمك ونمو معًا في مجتمعنا الداعم.",
        ),
    "onboarding_share_with_community_title":
        MessageLookupByLibrary.simpleMessage("شارك مع المجتمع"),
    "onboarding_skip": MessageLookupByLibrary.simpleMessage("تخطي"),
    "onboarding_track_progress_subtitle": MessageLookupByLibrary.simpleMessage(
      "راقب رحلتك التعليمية بتحليلات مفصلة وتتبع التقدم.",
    ),
    "onboarding_track_progress_title": MessageLookupByLibrary.simpleMessage(
      "تتبع تقدمك",
    ),
    "option_via_email": MessageLookupByLibrary.simpleMessage(
      "عبر البريد الإلكتروني",
    ),
    "option_via_sms": MessageLookupByLibrary.simpleMessage(
      "عبر الرسائل النصية",
    ),
    "otp_instruction": MessageLookupByLibrary.simpleMessage(
      "أدخل رمز OTP المكون من 4 أرقام الذي تم إرساله عبر الرسائل النصية لإكمال تسجيل حسابك",
    ),
    "otp_page_title": MessageLookupByLibrary.simpleMessage("التحقق برمز OTP"),
    "otp_reset_subtitle": MessageLookupByLibrary.simpleMessage(
      "أدخل رمز OTP المرسل إلى بريدك الإلكتروني لإعادة تعيين كلمة المرور",
    ),
    "otp_verify_email_title": MessageLookupByLibrary.simpleMessage(
      "تحقق من بريدك الإلكتروني",
    ),
    "otp_verify_subtitle": MessageLookupByLibrary.simpleMessage(
      "أدخل رمز OTP المرسل إلى بريدك الإلكتروني للتحقق من حسابك",
    ),
    "paid_filter": MessageLookupByLibrary.simpleMessage("مدفوع"),
    "password_and_auth": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور والمصادقة",
    ),
    "password_criteria_lowercase": MessageLookupByLibrary.simpleMessage(
      "حرف صغير",
    ),
    "password_criteria_lowercase_full": MessageLookupByLibrary.simpleMessage(
      "حرف صغير واحد على الأقل",
    ),
    "password_criteria_min_length": MessageLookupByLibrary.simpleMessage(
      "8+ حروف",
    ),
    "password_criteria_min_length_full": MessageLookupByLibrary.simpleMessage(
      "8 أحرف على الأقل",
    ),
    "password_criteria_number": MessageLookupByLibrary.simpleMessage("رقم"),
    "password_criteria_number_full": MessageLookupByLibrary.simpleMessage(
      "رقم واحد على الأقل",
    ),
    "password_criteria_special_char": MessageLookupByLibrary.simpleMessage(
      "رمز خاص",
    ),
    "password_criteria_special_char_full": MessageLookupByLibrary.simpleMessage(
      "رمز خاص واحد على الأقل",
    ),
    "password_criteria_uppercase": MessageLookupByLibrary.simpleMessage(
      "حرف كبير",
    ),
    "password_criteria_uppercase_full": MessageLookupByLibrary.simpleMessage(
      "حرف كبير واحد على الأقل",
    ),
    "password_label": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "password_label_reset_page": MessageLookupByLibrary.simpleMessage(
      "أدخل كلمة مرور جديدة",
    ),
    "password_min_length": MessageLookupByLibrary.simpleMessage(
      "يجب أن تحتوي كلمة المرور على 8 حروف على الأقل",
    ),
    "password_min_length_reset": MessageLookupByLibrary.simpleMessage(
      " 8 حروف على الأقل",
    ),
    "password_placeholder": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "password_required": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور مطلوبة",
    ),
    "password_requirements": MessageLookupByLibrary.simpleMessage(
      "يرجى استيفاء جميع متطلبات كلمة المرور",
    ),
    "passwords_dont_match": MessageLookupByLibrary.simpleMessage(
      "كلمات المرور غير متطابقة",
    ),
    "payment_option": MessageLookupByLibrary.simpleMessage("خيار الدفع"),
    "paypal": MessageLookupByLibrary.simpleMessage("PayPal"),
    "paypal_desc": MessageLookupByLibrary.simpleMessage(
      "الدفع باستخدام حساب PayPal",
    ),
    "pdf_document": MessageLookupByLibrary.simpleMessage("مستند PDF"),
    "pdf_only_allowed": MessageLookupByLibrary.simpleMessage(
      "مسموح بملفات PDF فقط",
    ),
    "personal_info": MessageLookupByLibrary.simpleMessage("المعلومات الشخصية"),
    "phone_invalid_format": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال رقم هاتف صالح",
    ),
    "phone_number_label": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
    "place_label": MessageLookupByLibrary.simpleMessage("المكان"),
    "plan_title": MessageLookupByLibrary.simpleMessage("الخطة"),
    "please_enter_event_title": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال عنوان الحدث",
    ),
    "please_enter_field": m10,
    "popular_courses": MessageLookupByLibrary.simpleMessage("الكورسات الشائعة"),
    "powered_by_ai": MessageLookupByLibrary.simpleMessage(
      "مدعوم بالذكاء الاصطناعي",
    ),
    "preferences_already_set": MessageLookupByLibrary.simpleMessage(
      "تم تعيين التفضيلات مسبقاً",
    ),
    "preferences_already_set_desc": MessageLookupByLibrary.simpleMessage(
      "لقد قمت بتكوين تفضيلات دراستك بالفعل",
    ),
    "preferences_section": MessageLookupByLibrary.simpleMessage("التفضيلات"),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
    "privacy_policy_desc": MessageLookupByLibrary.simpleMessage(
      "عرض سياسة الخصوصية",
    ),
    "privacy_settings": MessageLookupByLibrary.simpleMessage(
      "إعدادات الخصوصية",
    ),
    "processing_audio": MessageLookupByLibrary.simpleMessage(
      "رفع الصوت وإنشاء الاختبار",
    ),
    "profile_updated": MessageLookupByLibrary.simpleMessage(
      "تم تحديث الملف الشخصي بنجاح",
    ),
    "promotions": MessageLookupByLibrary.simpleMessage("العروض"),
    "promotions_desc": MessageLookupByLibrary.simpleMessage(
      "عروض خاصة وخصومات",
    ),
    "push_notifications": MessageLookupByLibrary.simpleMessage(
      "الإشعارات الفورية",
    ),
    "push_notifications_desc": MessageLookupByLibrary.simpleMessage(
      "تلقي الإشعارات على جهازك",
    ),
    "question_of": m11,
    "quiet_hours": MessageLookupByLibrary.simpleMessage("ساعات الهدوء"),
    "quiz": MessageLookupByLibrary.simpleMessage("اختبار"),
    "quizAllowRetakes": MessageLookupByLibrary.simpleMessage(
      "السماح بإعادة المحاولة",
    ),
    "quizAlreadyInProgress": MessageLookupByLibrary.simpleMessage(
      "لديك محاولة قيد التنفيذ",
    ),
    "quizAutoSubmitted": MessageLookupByLibrary.simpleMessage(
      "تم الإرسال تلقائياً (انتهت المدة)",
    ),
    "quizAvailabilityWindow": MessageLookupByLibrary.simpleMessage(
      "فترة التوفر",
    ),
    "quizCreate": MessageLookupByLibrary.simpleMessage("إنشاء اختبار"),
    "quizDeleteConfirm": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد من حذف هذا الاختبار؟",
    ),
    "quizDeleteWithSubmissionsConfirm": MessageLookupByLibrary.simpleMessage(
      "هذا الاختبار لديه إجابات. هل أنت متأكد من حذفه؟",
    ),
    "quizDescription": MessageLookupByLibrary.simpleMessage("الوصف"),
    "quizFailed": MessageLookupByLibrary.simpleMessage("راسب"),
    "quizGenerateFromPdf": MessageLookupByLibrary.simpleMessage(
      "إنشاء من ملف PDF",
    ),
    "quizGenerateFromVideo": MessageLookupByLibrary.simpleMessage(
      "إنشاء من فيديو",
    ),
    "quizGenerateFromVoice": MessageLookupByLibrary.simpleMessage(
      "إنشاء من صوتي",
    ),
    "quizPassed": MessageLookupByLibrary.simpleMessage("ناجح"),
    "quizPassingScore": MessageLookupByLibrary.simpleMessage("درجة النجاح (%)"),
    "quizPublish": MessageLookupByLibrary.simpleMessage("نشر"),
    "quizQuestionTypeMcq": MessageLookupByLibrary.simpleMessage(
      "اختيار من متعدد",
    ),
    "quizQuestionTypeShortAnswer": MessageLookupByLibrary.simpleMessage(
      "إجابة قصيرة",
    ),
    "quizQuestionTypeTrueFalse": MessageLookupByLibrary.simpleMessage(
      "صح أم خطأ",
    ),
    "quizResultOverride": MessageLookupByLibrary.simpleMessage("تعديل الدرجة"),
    "quizScoreLabel": MessageLookupByLibrary.simpleMessage("النتيجة"),
    "quizShowAnswers": MessageLookupByLibrary.simpleMessage(
      "عرض الإجابات بعد الإرسال",
    ),
    "quizStartAttempt": MessageLookupByLibrary.simpleMessage("بدء الاختبار"),
    "quizSubmit": MessageLookupByLibrary.simpleMessage("إرسال"),
    "quizTimeLimit": MessageLookupByLibrary.simpleMessage("المدة (بالدقائق)"),
    "quizTitle": MessageLookupByLibrary.simpleMessage("عنوان الاختبار"),
    "quizUnpublish": MessageLookupByLibrary.simpleMessage("إلغاء النشر"),
    "quizWindowClosed": MessageLookupByLibrary.simpleMessage(
      "هذا الاختبار لم يعد متاحاً",
    ),
    "quiz_maker": MessageLookupByLibrary.simpleMessage("صانع الاختبارات"),
    "quiz_offline_pending": MessageLookupByLibrary.simpleMessage(
      "تم حفظ إجاباتك. سيتم الإرسال عند استعادة الاتصال",
    ),
    "quiz_setup_num_questions": MessageLookupByLibrary.simpleMessage(
      "عدد الأسئلة",
    ),
    "quiz_setup_question_type": MessageLookupByLibrary.simpleMessage(
      "نوع الأسئلة",
    ),
    "quiz_setup_subject": MessageLookupByLibrary.simpleMessage("اسم المادة"),
    "quizzes": MessageLookupByLibrary.simpleMessage("الاختبارات"),
    "reading_material": m12,
    "reminders": MessageLookupByLibrary.simpleMessage("التذكيرات"),
    "reminders_desc": MessageLookupByLibrary.simpleMessage(
      "تذكيرات الدراسة والإشعارات المجدولة",
    ),
    "resend_button": MessageLookupByLibrary.simpleMessage("إعادة الإرسال"),
    "resend_instruction": MessageLookupByLibrary.simpleMessage(
      "لم تستلم رمز التأكيد بعد؟",
    ),
    "reset": MessageLookupByLibrary.simpleMessage("إعادة تعيين"),
    "reset_all_preferences": MessageLookupByLibrary.simpleMessage(
      "إعادة تعيين جميع التفضيلات",
    ),
    "reset_everything": MessageLookupByLibrary.simpleMessage(
      "إعادة تعيين كل شيء",
    ),
    "reset_everything_desc": MessageLookupByLibrary.simpleMessage(
      "البدء من جديد بتفضيلات جديدة",
    ),
    "reset_pass_title_page": MessageLookupByLibrary.simpleMessage(
      "إعادة تعيين كلمة المرور",
    ),
    "reset_password_button": MessageLookupByLibrary.simpleMessage(
      "إعادة تعيين كلمة المرور",
    ),
    "reset_preferences_confirm": MessageLookupByLibrary.simpleMessage(
      "سيؤدي هذا إلى حذف جميع تفضيلات دراستك والدروس المُنشأة. ستحتاج إلى إعداد تفضيلاتك مرة أخرى من البداية.",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
    "reviews": MessageLookupByLibrary.simpleMessage("التقييمات"),
    "role_hint": MessageLookupByLibrary.simpleMessage("الدور"),
    "role_student": MessageLookupByLibrary.simpleMessage("طالب"),
    "role_teacher": MessageLookupByLibrary.simpleMessage("معلم"),
    "roles": MessageLookupByLibrary.simpleMessage("طالب\nمعلم"),
    "save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "save_changes": MessageLookupByLibrary.simpleMessage("حفظ التغييرات"),
    "save_settings": MessageLookupByLibrary.simpleMessage("حفظ الإعدادات"),
    "screen_title": MessageLookupByLibrary.simpleMessage(
      "قم بإعادة تعيين كلمة المرور الخاصة بك",
    ),
    "search_courses_hint": MessageLookupByLibrary.simpleMessage(
      "ابحث في كورساتك...",
    ),
    "search_languages": MessageLookupByLibrary.simpleMessage(
      "البحث عن اللغات...",
    ),
    "security": MessageLookupByLibrary.simpleMessage("الأمان"),
    "security_settings": MessageLookupByLibrary.simpleMessage("إعدادات الأمان"),
    "select_academic_stage": MessageLookupByLibrary.simpleMessage(
      "اختر المرحلة الدراسية",
    ),
    "select_academic_year": MessageLookupByLibrary.simpleMessage(
      "اختر السنة الدراسية",
    ),
    "select_date": MessageLookupByLibrary.simpleMessage("اختر التاريخ"),
    "select_gender": MessageLookupByLibrary.simpleMessage("اختر الجنس"),
    "select_option": MessageLookupByLibrary.simpleMessage("يرجى اختيار خيار"),
    "select_section": MessageLookupByLibrary.simpleMessage("اختر الشعبة"),
    "settings_saved": MessageLookupByLibrary.simpleMessage(
      "تم حفظ الإعدادات بنجاح!",
    ),
    "settings_title": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "share": MessageLookupByLibrary.simpleMessage("مشاركة"),
    "shareCourseAction": MessageLookupByLibrary.simpleMessage("مشاركة الدورة"),
    "shareCourseMessage": m13,
    "share_coming_soon": MessageLookupByLibrary.simpleMessage(
      "ميزة المشاركة قادمة قريباً",
    ),
    "sign_in_button": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "sign_up_prompt": MessageLookupByLibrary.simpleMessage("ليس لديك حساب؟ "),
    "signin_prompt": MessageLookupByLibrary.simpleMessage("لديك حساب بالفعل؟ "),
    "signup_button": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "signup_create_account": MessageLookupByLibrary.simpleMessage(
      "أنشئ حسابك للبدء",
    ),
    "sms_notifications": MessageLookupByLibrary.simpleMessage(
      "إشعارات الرسائل النصية",
    ),
    "sms_notifications_desc": MessageLookupByLibrary.simpleMessage(
      "تلقي الإشعارات عبر الرسائل النصية",
    ),
    "specialization_hint": MessageLookupByLibrary.simpleMessage("التخصص"),
    "specializations": MessageLookupByLibrary.simpleMessage(
      "علوم\nعلمي رياضة\nأدبي",
    ),
    "stale_cache_message": MessageLookupByLibrary.simpleMessage(
      "عرض البيانات المخزنة",
    ),
    "stale_cache_retry": MessageLookupByLibrary.simpleMessage("تحديث"),
    "start_learning_journey": MessageLookupByLibrary.simpleMessage(
      "ابدأ رحلتك التعليمية اليوم!",
    ),
    "start_time": MessageLookupByLibrary.simpleMessage("وقت البدء"),
    "stat_all_courses": MessageLookupByLibrary.simpleMessage("الكل"),
    "stat_completed": MessageLookupByLibrary.simpleMessage("مكتمل"),
    "stat_in_progress": MessageLookupByLibrary.simpleMessage("جاري"),
    "streaming_now": MessageLookupByLibrary.simpleMessage("بث مباشر الآن"),
    "student_email_required": MessageLookupByLibrary.simpleMessage(
      "يرجى استخدام بريد إلكتروني صالح للطالب (@student.eol.edu)",
    ),
    "students_label": MessageLookupByLibrary.simpleMessage("الطلاب"),
    "study_plan_created": MessageLookupByLibrary.simpleMessage(
      "تم إنشاء خطة الدراسة بنجاح!",
    ),
    "study_plan_updated": MessageLookupByLibrary.simpleMessage(
      "تم تحديث خطة الدراسة بنجاح!",
    ),
    "study_preferences": MessageLookupByLibrary.simpleMessage(
      "تفضيلات الدراسة",
    ),
    "subjects": MessageLookupByLibrary.simpleMessage("المواد"),
    "submit_answers": MessageLookupByLibrary.simpleMessage("إرسال الإجابات"),
    "subscription_plans": MessageLookupByLibrary.simpleMessage("خطط الاشتراك"),
    "teacher_doc_delete_confirm": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد من حذف هذا المستند؟",
    ),
    "teacher_doc_reupload_approved_warning":
        MessageLookupByLibrary.simpleMessage(
          "إعادة رفع المستندات ستعيد حالة التحقق إلى قيد المراجعة.",
        ),
    "teacher_doc_type_degree": MessageLookupByLibrary.simpleMessage(
      "شهادة التخرج",
    ),
    "teacher_doc_type_id_back": MessageLookupByLibrary.simpleMessage(
      "هوية (خلفية)",
    ),
    "teacher_doc_type_id_front": MessageLookupByLibrary.simpleMessage(
      "هوية (أمامية)",
    ),
    "teacher_doc_type_teaching": MessageLookupByLibrary.simpleMessage(
      "شهادة التدريس",
    ),
    "teacher_doc_upload_hint": MessageLookupByLibrary.simpleMessage(
      "انقر للرفع",
    ),
    "teacher_doc_upload_retry": MessageLookupByLibrary.simpleMessage(
      "إعادة المحاولة",
    ),
    "teacher_doc_upload_success": MessageLookupByLibrary.simpleMessage(
      "تم الرفع",
    ),
    "teacher_documents_subtitle": MessageLookupByLibrary.simpleMessage(
      "ارفع المستندات المطلوبة للتحقق من حسابك",
    ),
    "teacher_documents_title": MessageLookupByLibrary.simpleMessage(
      "مستندات التحقق",
    ),
    "teacher_documents_view_placeholder": MessageLookupByLibrary.simpleMessage(
      "عرض المستندات - قريباً",
    ),
    "teacher_email_required": MessageLookupByLibrary.simpleMessage(
      "يرجى استخدام بريد إلكتروني صالح للمعلم (@teacher.eol.edu)",
    ),
    "teacher_onboarding_step_documents": MessageLookupByLibrary.simpleMessage(
      "المستندات",
    ),
    "teacher_onboarding_step_profile": MessageLookupByLibrary.simpleMessage(
      "الملف الشخصي",
    ),
    "teacher_onboarding_step_verification":
        MessageLookupByLibrary.simpleMessage("التحقق"),
    "teacher_onboarding_title": MessageLookupByLibrary.simpleMessage(
      "أكمل ملفك الشخصي",
    ),
    "teacher_profile_bio": MessageLookupByLibrary.simpleMessage(
      "النبذة التعريفية",
    ),
    "teacher_profile_bio_error_long": MessageLookupByLibrary.simpleMessage(
      "لا يمكن أن تتجاوز النبذة التعريفية 200 حرف",
    ),
    "teacher_profile_bio_error_short": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون النبذة التعريفية 10 أحرف على الأقل",
    ),
    "teacher_profile_bio_hint": MessageLookupByLibrary.simpleMessage(
      "أخبر الطلاب عن نفسك (10-200 حرف)",
    ),
    "teacher_profile_date_of_birth": MessageLookupByLibrary.simpleMessage(
      "تاريخ الميلاد",
    ),
    "teacher_profile_dob_error_age": MessageLookupByLibrary.simpleMessage(
      "يجب أن يكون عمرك 23 سنة على الأقل",
    ),
    "teacher_profile_fill_to_preview": MessageLookupByLibrary.simpleMessage(
      "املأ النموذج لمعاينة ملفك الشخصي",
    ),
    "teacher_profile_full_name": MessageLookupByLibrary.simpleMessage(
      "الاسم الكامل",
    ),
    "teacher_profile_gender": MessageLookupByLibrary.simpleMessage("الجنس"),
    "teacher_profile_not_available": MessageLookupByLibrary.simpleMessage(
      "غير متوفر",
    ),
    "teacher_profile_not_verified": MessageLookupByLibrary.simpleMessage(
      "لم يتم التحقق بعد",
    ),
    "teacher_profile_saved": MessageLookupByLibrary.simpleMessage(
      "تم حفظ الملف الشخصي بنجاح",
    ),
    "teacher_profile_specialization": MessageLookupByLibrary.simpleMessage(
      "التخصص",
    ),
    "teacher_profile_subject": MessageLookupByLibrary.simpleMessage(
      "المادة التي تدرسها",
    ),
    "teacher_profile_teaching_level": MessageLookupByLibrary.simpleMessage(
      "المرحلة الدراسية",
    ),
    "teacher_profile_years_experience": MessageLookupByLibrary.simpleMessage(
      "سنوات الخبرة",
    ),
    "teacher_public_profile_details": MessageLookupByLibrary.simpleMessage(
      "التفاصيل",
    ),
    "teacher_public_profile_students": MessageLookupByLibrary.simpleMessage(
      "طالب",
    ),
    "teacher_public_profile_title": MessageLookupByLibrary.simpleMessage(
      "ملف المعلم",
    ),
    "teacher_verification_approved": MessageLookupByLibrary.simpleMessage(
      "تم التحقق من حسابك",
    ),
    "teacher_verification_approved_subtitle":
        MessageLookupByLibrary.simpleMessage(
          "تم التحقق من حسابك. يمكنك الآن نشر الكورسات.",
        ),
    "teacher_verification_complete_profile_first":
        MessageLookupByLibrary.simpleMessage(
          "أكمل الملف الشخصي وارفع جميع المستندات المطلوبة للإرسال.",
        ),
    "teacher_verification_not_verified": MessageLookupByLibrary.simpleMessage(
      "غير موثق",
    ),
    "teacher_verification_pending": MessageLookupByLibrary.simpleMessage(
      "التحقق قيد المراجعة",
    ),
    "teacher_verification_pending_subtitle":
        MessageLookupByLibrary.simpleMessage("سنخطرك عند مراجعة حسابك."),
    "teacher_verification_rejected": MessageLookupByLibrary.simpleMessage(
      "تم رفض التحقق",
    ),
    "teacher_verification_rejected_reason": m14,
    "teacher_verification_resubmit": MessageLookupByLibrary.simpleMessage(
      "إعادة الإرسال للتحقق",
    ),
    "teacher_verification_status_unavailable":
        MessageLookupByLibrary.simpleMessage("الحالة غير متوفرة"),
    "teacher_verification_submit": MessageLookupByLibrary.simpleMessage(
      "إرسال للتحقق",
    ),
    "teacher_verification_submitted": MessageLookupByLibrary.simpleMessage(
      "تم إرسال التحقق بنجاح",
    ),
    "teacher_verification_unverified_subtitle":
        MessageLookupByLibrary.simpleMessage(
          "املأ ملفك الشخصي، ارفع المستندات المطلوبة، ثم أرسل للتحقق لبدء نشر الكورسات.",
        ),
    "teacher_verification_unverified_title":
        MessageLookupByLibrary.simpleMessage("أكمل التحقق من حسابك"),
    "teacher_verification_view_placeholder":
        MessageLookupByLibrary.simpleMessage("عرض التحقق - قريباً"),
    "terms_and_conditions": MessageLookupByLibrary.simpleMessage(
      "الشروط والأحكام",
    ),
    "tip_text": MessageLookupByLibrary.simpleMessage(
      "نصيحة: استخدم مزيجًا من الأرقام، الحروف الكبيرة، الحروف الصغيرة، والرموز الخاصة",
    ),
    "to_label": MessageLookupByLibrary.simpleMessage("إلى"),
    "top_mentors": MessageLookupByLibrary.simpleMessage("أفضل المعلمين"),
    "two_factor_auth": MessageLookupByLibrary.simpleMessage(
      "المصادقة الثنائية",
    ),
    "two_factor_desc": MessageLookupByLibrary.simpleMessage(
      "إضافة طبقة أمان إضافية",
    ),
    "untitled": MessageLookupByLibrary.simpleMessage("بدون عنوان"),
    "untitled_note": MessageLookupByLibrary.simpleMessage("ملاحظة بدون عنوان"),
    "update_body": MessageLookupByLibrary.simpleMessage(
      "إصدار جديد من EOL متاح. حدّث الآن للحصول على أحدث الميزات.",
    ),
    "update_button": MessageLookupByLibrary.simpleMessage("تحديث الآن"),
    "update_later": MessageLookupByLibrary.simpleMessage("لاحقاً"),
    "update_password_desc": MessageLookupByLibrary.simpleMessage(
      "تحديث كلمة مرور حسابك",
    ),
    "update_ready": MessageLookupByLibrary.simpleMessage(
      "التحديث جاهز للتثبيت",
    ),
    "update_title": MessageLookupByLibrary.simpleMessage("تحديث متاح"),
    "uploading_pdf": MessageLookupByLibrary.simpleMessage("جاري رفع الملف..."),
    "username_invalid_chars": MessageLookupByLibrary.simpleMessage(
      "يمكن أن يحتوي اسم المستخدم على أحرف وأرقام وشرطات سفلية فقط",
    ),
    "username_label": MessageLookupByLibrary.simpleMessage("اسم المستخدم"),
    "username_min_length": MessageLookupByLibrary.simpleMessage(
      "يجب أن يتكون اسم المستخدم من 3 أحرف على الأقل",
    ),
    "valid_email": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال بريد إلكتروني صالح",
    ),
    "valid_full_name": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال الاسم الكامل (على الأقل اسمين)",
    ),
    "valid_phone_number": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال رقم هاتف صالح",
    ),
    "verification_code_has_been_sent_to": MessageLookupByLibrary.simpleMessage(
      "تم إرسال رمز التحقق إلى",
    ),
    "verify_button": MessageLookupByLibrary.simpleMessage("تحقق"),
    "video_quiz": MessageLookupByLibrary.simpleMessage("اختبار الفيديو"),
    "voice_quiz": MessageLookupByLibrary.simpleMessage("اختبار الصوت"),
    "warning": MessageLookupByLibrary.simpleMessage("تحذير"),
    "welcome_messagewelcome_message": MessageLookupByLibrary.simpleMessage(
      "مرحبًا. لنبدأ بإنشاء حسابك\nأو قم بتسجيل الدخول إذا كان لديك حساب بالفعل",
    ),
    "words_count": m15,
    "year_hint": MessageLookupByLibrary.simpleMessage("السنة"),
    "years": MessageLookupByLibrary.simpleMessage(
      "السنة الأولى\nالسنة الثانية\nالسنة الثالثة",
    ),
    "yesterday": MessageLookupByLibrary.simpleMessage("أمس"),
    "your_name": MessageLookupByLibrary.simpleMessage("اسمك"),
    "your_score": MessageLookupByLibrary.simpleMessage("نتيجتك"),
  };
}
