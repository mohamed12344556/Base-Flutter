import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../dark_theme_style.dart';

/// Manages the active dark theme style, persisted across restarts.
class DarkThemeStyleCubit extends HydratedCubit<DarkThemeStyle> {
  DarkThemeStyleCubit() : super(DarkThemeStyle.classicDark);

  void setStyle(DarkThemeStyle style) => emit(style);

  @override
  DarkThemeStyle? fromJson(Map<String, dynamic> json) =>
      DarkThemeStyle.fromKey(json['darkThemeStyle'] as String?);

  @override
  Map<String, dynamic>? toJson(DarkThemeStyle state) => {
    'darkThemeStyle': state.key,
  };
}
