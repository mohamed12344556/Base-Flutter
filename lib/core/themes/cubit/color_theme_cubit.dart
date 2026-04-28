import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../cache/shared_pref_helper.dart';
import '../app_color_theme.dart';

/// Manages the active color theme variant.
///
/// Persists across restarts via [HydratedBloc]. Also writes to
/// SharedPreferences so Android's MainActivity can read it
/// before Flutter initializes (for native splash selection).
class ColorThemeCubit extends HydratedCubit<AppColorTheme> {
  ColorThemeCubit() : super(AppColorTheme.defaultTheme);

  static const String sharedPrefKey = 'app_color_theme';

  /// Called when Remote Config delivers a new theme.
  Future<void> setColorTheme(AppColorTheme theme) async {
    await SharedPrefHelper.setData(sharedPrefKey, theme.key);
    emit(theme);
  }

  @override
  AppColorTheme? fromJson(Map<String, dynamic> json) =>
      AppColorTheme.fromKey(json['colorTheme'] as String?);

  @override
  Map<String, dynamic>? toJson(AppColorTheme state) => {
    'colorTheme': state.key,
  };
}
