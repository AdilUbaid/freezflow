import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/// The [AppTheme] defines light and dark themes for the app.
///
/// Theme setup for FlexColorScheme package v8.
/// Use same major flex_color_scheme package version. If you use a
/// lower minor version, some properties may not be supported.
/// In that case, remove them after copying this theme to your
/// app or upgrade package to version 8.1.1.
///
/// Use in [MaterialApp] like this:
///
/// MaterialApp(
///   theme: AppTheme.light,
///   darkTheme: AppTheme.dark,
/// );
abstract final class AppTheme {
  // The defined light theme.
  static ThemeData light = FlexThemeData.light(
  colors: const FlexSchemeColor( // Custom colors
    primary: Color(0xFF000000),
    primaryContainer: Color(0xFFE0E0E0),
    primaryLightRef: Color(0xFF000000),
    secondary: Color(0xFF000000),
    secondaryContainer: Color(0xFFE4E4E4),
    secondaryLightRef: Color(0xFF000000),
    tertiary: Color(0xFF000000),
    tertiaryContainer: Color(0xFFC9C9C9),
    tertiaryLightRef: Color(0xFF000000),
    appBarColor: Color(0xFFE4E4E4),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
  ),
  subThemesData: const FlexSubThemesData(
    interactionEffects: true,
    tintedDisabledControls: true,
    useMaterial3Typography: true,
    useM2StyleDividerInM3: true,
    inputDecoratorIsFilled: true,
    inputDecoratorBorderType: FlexInputBorderType.outline,
    alignedDropdown: true,
    bottomNavigationBarSelectedLabelSize: 16,
    bottomNavigationBarUnselectedLabelSize: 12,
    bottomNavigationBarSelectedIconSize: 28,
    bottomNavigationBarUnselectedIconSize: 24,
    searchBarRadius: 14.0,
    searchViewRadius: 14.0,
    searchUseGlobalShape: true,
    navigationRailUseIndicator: true,
    navigationRailLabelType: NavigationRailLabelType.all,
  ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
  // The defined dark theme.
  static ThemeData dark = FlexThemeData.dark(
  colors: const FlexSchemeColor( // Custom colors
    primary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF404040),
    primaryLightRef: Color(0xFF000000),
    secondary: Color(0xFF9258D4),
    secondaryContainer: Color(0xFF474747),
    secondaryLightRef: Color(0xFF000000),
    tertiary: Color(0xFFBBD39D),
    tertiaryContainer: Color(0xFF5E5E5E),
    tertiaryLightRef: Color(0xFF000000),
    appBarColor: Color(0xFFE4E4E4),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
  ),
  subThemesData: const FlexSubThemesData(
    interactionEffects: true,
    tintedDisabledControls: true,
    blendOnColors: true,
    useMaterial3Typography: true,
    useM2StyleDividerInM3: true,
    inputDecoratorIsFilled: true,
    inputDecoratorBorderType: FlexInputBorderType.outline,
    alignedDropdown: true,
    bottomNavigationBarSelectedLabelSize: 16,
    bottomNavigationBarUnselectedLabelSize: 12,
    bottomNavigationBarSelectedIconSize: 28,
    bottomNavigationBarUnselectedIconSize: 24,
    searchBarRadius: 14.0,
    searchViewRadius: 14.0,
    searchUseGlobalShape: true,
    navigationRailUseIndicator: true,
    navigationRailLabelType: NavigationRailLabelType.all,
  ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}
