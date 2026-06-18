// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';

SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();

  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color onPrimary;
  late Color primaryContainer;
  late Color onPrimaryContainer;
  late Color onSecondary;
  late Color secondaryContainer;
  late Color onSecondaryContainer;
  late Color onAccent;
  late Color accentContainer;
  late Color onAccentContainer;
  late Color onBackground;
  late Color onSurface;
  late Color surfaceVariant;
  late Color onSurfaceVariant;
  late Color onSuccess;
  late Color onWarning;
  late Color onError;
  late Color onInfo;
  late Color transparent;
  late Color fullContrast;
  late Color onPrimary80;
  late Color onWarning80;
  late Color onWarning27;
  late Color surface20;
  late Color onPrimary20;
  late Color onWarning53;
  late Color onWarning0;
  late Color onWarning67;
  late Color surface80;
  late Color primary10;
  late Color info30;
  late Color secondary20;
  late Color background80;

  FFDesignTokens get designToken => FFDesignTokens(this);

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  bool get displayLargeIsCustom => typography.displayLargeIsCustom;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  bool get displayMediumIsCustom => typography.displayMediumIsCustom;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  bool get displaySmallIsCustom => typography.displaySmallIsCustom;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  bool get headlineLargeIsCustom => typography.headlineLargeIsCustom;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  bool get headlineMediumIsCustom => typography.headlineMediumIsCustom;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  bool get headlineSmallIsCustom => typography.headlineSmallIsCustom;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  bool get titleLargeIsCustom => typography.titleLargeIsCustom;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  bool get titleMediumIsCustom => typography.titleMediumIsCustom;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  bool get titleSmallIsCustom => typography.titleSmallIsCustom;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  bool get labelLargeIsCustom => typography.labelLargeIsCustom;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  bool get labelMediumIsCustom => typography.labelMediumIsCustom;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  bool get labelSmallIsCustom => typography.labelSmallIsCustom;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  bool get bodyLargeIsCustom => typography.bodyLargeIsCustom;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  bool get bodyMediumIsCustom => typography.bodyMediumIsCustom;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  bool get bodySmallIsCustom => typography.bodySmallIsCustom;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF228B22);
  late Color secondary = const Color(0xFFC47934);
  late Color tertiary = const Color(0xFFE67E22);
  late Color alternate = const Color(0xFFE8DFD0);
  late Color primaryText = const Color(0xFF2D241E);
  late Color secondaryText = const Color(0xFF5C544E);
  late Color primaryBackground = const Color(0xFFFDFBF7);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x00000000);
  late Color accent2 = const Color(0x00000000);
  late Color accent3 = const Color(0xFFA69D95);
  late Color accent4 = const Color(0x00000000);
  late Color success = const Color(0xFF2E7D32);
  late Color warning = const Color(0xFFFBC02D);
  late Color error = const Color(0xFFD32F2F);
  late Color info = const Color(0xFF87CEEB);

  late Color onPrimary = const Color(0xFFFFFFFF);
  late Color primaryContainer = const Color(0x1A228B22);
  late Color onPrimaryContainer = const Color(0xFF2D241E);
  late Color onSecondary = const Color(0xFFFFFFFF);
  late Color secondaryContainer = const Color(0x1A5D3A1A);
  late Color onSecondaryContainer = const Color(0xFF302118);
  late Color onAccent = const Color(0xFFFFFFFF);
  late Color accentContainer = const Color(0x1AE67E22);
  late Color onAccentContainer = const Color(0xFF43342C);
  late Color onBackground = const Color(0xFF1D1713);
  late Color onSurface = const Color(0xFF2D241E);
  late Color surfaceVariant = const Color(0xFFE8DFD0);
  late Color onSurfaceVariant = const Color(0xFF5C544E);
  late Color onSuccess = const Color(0xFFFFFFFF);
  late Color onWarning = const Color(0xFF000000);
  late Color onError = const Color(0xFFFFFFFF);
  late Color onInfo = const Color(0xFF000000);
  late Color transparent = const Color(0x00000000);
  late Color fullContrast = const Color(0xFF000000);
  late Color onPrimary80 = const Color(0xCCFFFFFF);
  late Color onWarning80 = const Color(0xCC000000);
  late Color onWarning27 = const Color(0x45000000);
  late Color surface20 = const Color(0x33FFFFFF);
  late Color onPrimary20 = const Color(0x33FFFFFF);
  late Color onWarning53 = const Color(0x87000000);
  late Color onWarning0 = const Color(0x00000000);
  late Color onWarning67 = const Color(0xAB000000);
  late Color surface80 = const Color(0xCCFFFFFF);
  late Color primary10 = const Color(0x1A228B22);
  late Color info30 = const Color(0x4D87CEEB);
  late Color secondary20 = const Color(0x336C431D);
  late Color background80 = const Color(0xCCFDFBF7);
}

abstract class Typography {
  String get displayLargeFamily;
  bool get displayLargeIsCustom;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  bool get displayMediumIsCustom;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  bool get displaySmallIsCustom;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  bool get headlineLargeIsCustom;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  bool get headlineMediumIsCustom;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  bool get headlineSmallIsCustom;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  bool get titleLargeIsCustom;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  bool get titleMediumIsCustom;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  bool get titleSmallIsCustom;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  bool get labelLargeIsCustom;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  bool get labelMediumIsCustom;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  bool get labelSmallIsCustom;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  bool get bodyLargeIsCustom;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  bool get bodyMediumIsCustom;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  bool get bodySmallIsCustom;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Cabin';
  bool get displayLargeIsCustom => false;
  TextStyle get displayLarge => GoogleFonts.cabin(
        fontWeight: FontWeight.bold,
        fontSize: 57.0,
        height: 1.12,
      );
  String get displayMediumFamily => 'Cabin';
  bool get displayMediumIsCustom => false;
  TextStyle get displayMedium => GoogleFonts.cabin(
        fontWeight: FontWeight.bold,
        fontSize: 45.0,
        height: 1.16,
      );
  String get displaySmallFamily => 'Cabin';
  bool get displaySmallIsCustom => false;
  TextStyle get displaySmall => GoogleFonts.cabin(
        fontWeight: FontWeight.bold,
        fontSize: 36.0,
        height: 1.22,
      );
  String get headlineLargeFamily => 'Cabin';
  bool get headlineLargeIsCustom => false;
  TextStyle get headlineLarge => GoogleFonts.cabin(
        fontWeight: FontWeight.bold,
        fontSize: 32.0,
        height: 1.2,
      );
  String get headlineMediumFamily => 'Cabin';
  bool get headlineMediumIsCustom => false;
  TextStyle get headlineMedium => GoogleFonts.cabin(
        fontWeight: FontWeight.w600,
        fontSize: 28.0,
        height: 1.25,
      );
  String get headlineSmallFamily => 'Cabin';
  bool get headlineSmallIsCustom => false;
  TextStyle get headlineSmall => GoogleFonts.cabin(
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
        height: 1.3,
      );
  String get titleLargeFamily => 'Cabin';
  bool get titleLargeIsCustom => false;
  TextStyle get titleLarge => GoogleFonts.cabin(
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
        height: 1.27,
      );
  String get titleMediumFamily => 'Cabin';
  bool get titleMediumIsCustom => false;
  TextStyle get titleMedium => GoogleFonts.cabin(
        fontWeight: FontWeight.w600,
        fontSize: 17.0,
        height: 1.35,
      );
  String get titleSmallFamily => 'Cabin';
  bool get titleSmallIsCustom => false;
  TextStyle get titleSmall => GoogleFonts.cabin(
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
        height: 1.4,
      );
  String get labelLargeFamily => 'Source Sans Pro';
  bool get labelLargeIsCustom => false;
  TextStyle get labelLarge => GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
        height: 1.33,
      );
  String get labelMediumFamily => 'Source Sans Pro';
  bool get labelMediumIsCustom => false;
  TextStyle get labelMedium => GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        fontSize: 12.0,
        height: 1.38,
      );
  String get labelSmallFamily => 'Source Sans Pro';
  bool get labelSmallIsCustom => false;
  TextStyle get labelSmall => GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        fontSize: 11.0,
        height: 1.27,
      );
  String get bodyLargeFamily => 'Source Sans Pro';
  bool get bodyLargeIsCustom => false;
  TextStyle get bodyLarge => GoogleFonts.roboto(
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        height: 1.5,
      );
  String get bodyMediumFamily => 'Source Sans Pro';
  bool get bodyMediumIsCustom => false;
  TextStyle get bodyMedium => GoogleFonts.roboto(
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        height: 1.47,
      );
  String get bodySmallFamily => 'Source Sans Pro';
  bool get bodySmallIsCustom => false;
  TextStyle get bodySmall => GoogleFonts.roboto(
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
        height: 1.38,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4CAF50);
  late Color secondary = const Color(0xFFEFC68C);
  late Color tertiary = const Color(0xFFF39C12);
  late Color alternate = const Color(0xFF3D342C);
  late Color primaryText = const Color(0xFFFDFBF7);
  late Color secondaryText = const Color(0xFFD2CCC6);
  late Color primaryBackground = const Color(0xFF1A1612);
  late Color secondaryBackground = const Color(0xFFE9BC92);
  late Color accent1 = const Color(0x00000000);
  late Color accent2 = const Color(0x00000000);
  late Color accent3 = const Color(0xFF8C847D);
  late Color accent4 = const Color(0x00000000);
  late Color success = const Color(0xFF81C784);
  late Color warning = const Color(0xFFFFF176);
  late Color error = const Color(0xFFE57373);
  late Color info = const Color(0xFF87CEEB);

  late Color onPrimary = const Color(0xFFFFFFFF);
  late Color primaryContainer = const Color(0x244CAF50);
  late Color onPrimaryContainer = const Color(0xFFFDFBF7);
  late Color onSecondary = const Color(0xFFFFFFFF);
  late Color secondaryContainer = const Color(0x24C2A379);
  late Color onSecondaryContainer = const Color(0xFFFDFBF7);
  late Color onAccent = const Color(0xFFFFFFFF);
  late Color accentContainer = const Color(0x24F39C12);
  late Color onAccentContainer = const Color(0xFFFDFBF7);
  late Color onBackground = const Color(0xFFFDFBF7);
  late Color onSurface = const Color(0xFFFDFBF7);
  late Color surfaceVariant = const Color(0xFF3D342C);
  late Color onSurfaceVariant = const Color(0xFFD2CCC6);
  late Color onSuccess = const Color(0xFFFFFFFF);
  late Color onWarning = const Color(0xFF000000);
  late Color onError = const Color(0xFFFFFFFF);
  late Color onInfo = const Color(0xFF000000);
  late Color transparent = const Color(0x00000000);
  late Color fullContrast = const Color(0xFFFFFFFF);
  late Color onPrimary80 = const Color(0xCCFFFFFF);
  late Color onWarning80 = const Color(0xCC000000);
  late Color onWarning27 = const Color(0x45000000);
  late Color surface20 = const Color(0x332D2620);
  late Color onPrimary20 = const Color(0x33FFFFFF);
  late Color onWarning53 = const Color(0x87000000);
  late Color onWarning0 = const Color(0x00000000);
  late Color onWarning67 = const Color(0xAB000000);
  late Color surface80 = const Color(0xCC2D2620);
  late Color primary10 = const Color(0x1A4CAF50);
  late Color info30 = const Color(0x4D87CEEB);
  late Color secondary20 = const Color(0x33D2B48C);
  late Color background80 = const Color(0xCC1A1612);
}

class FFDesignTokens {
  const FFDesignTokens(this.theme);
  final FlutterFlowTheme theme;
  FFSpacing get spacing => const FFSpacing();
  FFRadius get radius => const FFRadius();
  FFShadows get shadow => FFShadows(theme);
}

class FFSpacing {
  const FFSpacing();
  double get none => 0.0;
  double get xs => 4.0;
  double get sm => 8.0;
  double get md => 16.0;
  double get lg => 24.0;
  double get xl => 32.0;
  double get xxl => 48.0;
  double get xxxl => 64.0;
}

class FFRadius {
  const FFRadius();
  double get none => 0.0;
  double get xs => 4.0;
  double get sm => 8.0;
  double get md => 12.0;
  double get lg => 16.0;
  double get xl => 24.0;
  double get xxl => 32.0;
  double get full => 9999.0;
}

class FFShadows {
  const FFShadows(this.theme);
  final FlutterFlowTheme theme;
  BoxShadow get none => const BoxShadow(
      blurRadius: 0.0,
      color: const Color(0x00000000),
      offset: const Offset(0.0, 0.0),
      spreadRadius: 0.0);
  BoxShadow get xs => const BoxShadow(
      blurRadius: 2.0,
      color: const Color(0x143D342C),
      offset: const Offset(0.0, 1.0),
      spreadRadius: 0.0);
  BoxShadow get sm => const BoxShadow(
      blurRadius: 4.0,
      color: const Color(0x1A3D342C),
      offset: const Offset(0.0, 2.0),
      spreadRadius: 0.0);
  BoxShadow get md => const BoxShadow(
      blurRadius: 8.0,
      color: const Color(0x213D342C),
      offset: const Offset(0.0, 4.0),
      spreadRadius: 0.0);
  BoxShadow get lg => const BoxShadow(
      blurRadius: 16.0,
      color: const Color(0x263D342C),
      offset: const Offset(0.0, 8.0),
      spreadRadius: 0.0);
  BoxShadow get xl => const BoxShadow(
      blurRadius: 24.0,
      color: const Color(0x263D342C),
      offset: const Offset(0.0, 12.0),
      spreadRadius: 0.0);
  BoxShadow get xxl => const BoxShadow(
      blurRadius: 32.0,
      color: const Color(0x333D342C),
      offset: const Offset(0.0, 16.0),
      spreadRadius: 0.0);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    TextStyle? font,
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
    String? package,
  }) {
    if (useGoogleFonts && fontFamily != null) {
      font = GoogleFonts.getFont(fontFamily,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle);
    }

    return font != null
        ? font.copyWith(
            color: color ?? this.color,
            fontSize: fontSize ?? this.fontSize,
            letterSpacing: letterSpacing ?? this.letterSpacing,
            fontWeight: fontWeight ?? this.fontWeight,
            fontStyle: fontStyle ?? this.fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          )
        : copyWith(
            fontFamily: fontFamily,
            package: package,
            color: color,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          );
  }
}
