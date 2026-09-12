import 'package:flutter/material.dart';

import 'app_colors.dart';

class WebTextTheme {
  WebTextTheme._();

  static const String defaultFontFamily = 'Inter';
  static const List<String> fallbackFonts = ['NotoSans', 'Roboto'];

  static const TextStyle baseStyle = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
  );

  static const TextStyle textBaseFontBold = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Color(0xFF000000),
  );
  static const TextStyle textBaseFontSemiBoldPanel = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Color(0xFF000000),
  );
  static const TextStyle textXsFontMedium = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.gray600,
  );
  static const TextStyle textXsFontBold = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.gray600,
  );
  static const TextStyle textXsFontSemibold = TextStyle(
    color: AppColors.gray400,
    fontFamilyFallback: fallbackFonts,
    fontSize: 12,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle textSmSemiBold = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontWeight: FontWeight.w600,
    color: AppColors.gray700,
    fontSize: 14,
  );

  static const TextStyle textLg = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontWeight: FontWeight.w400,
    color: AppColors.gray700,
    fontSize: 18,
    height: 1.5,
  );

  static const TextStyle textXs = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontWeight: FontWeight.w400,
    color: AppColors.gray700,
    fontSize: 12,
    height: 1.5,
  );

  static const TextStyle textXl = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontWeight: FontWeight.w400,
    color: AppColors.gray700,
    fontSize: 20,
    height: 1.5,
  );

  static const TextStyle textXlFontBold = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontWeight: FontWeight.w700,
    color: AppColors.gray900,
    fontSize: 20,
  );

  static const TextStyle sentMessageBodyTextStyle = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    fontSize: 14,
  );

  static const TextStyle receivedMessageBodyTextStyle = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontWeight: FontWeight.w400,
    color: AppColors.gray900,
    fontSize: 14,
  );
  static const TextStyle titleCourseTextTheme = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontWeight: FontWeight.w700,
    fontSize: 21,
    color: AppColors.gray900,
  );

  static const textBase = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    color: AppColors.gray800,
  );

  static const textSm = TextStyle(
    fontFamily: defaultFontFamily,
    fontFamilyFallback: fallbackFonts,
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    color: AppColors.gray800,
  );
}

extension TextStyleColorExt on TextStyle {
  TextStyle get gray900 => copyWith(
        color: AppColors.gray900,
      );

  TextStyle get gray800 => copyWith(
        color: AppColors.gray800,
      );
}

extension TextStyleExt on TextStyle {
  ///v100
  TextStyle get thin => copyWith(
        fontWeight: FontWeight.w100,
        fontSize: fontSize,
      );
  TextStyle get thinItalic => copyWith(
        fontWeight: FontWeight.w100,
        fontStyle: FontStyle.italic,
        fontSize: fontSize,
      );

  ///v200
  TextStyle get extraLight => copyWith(
        fontWeight: FontWeight.w200,
        fontSize: fontSize,
      );
  TextStyle get extraLightItalic => copyWith(
        fontWeight: FontWeight.w200,
        fontStyle: FontStyle.italic,
        fontSize: fontSize,
      );

  ///v300
  TextStyle get light => copyWith(
        fontWeight: FontWeight.w300,
        fontSize: fontSize,
      );
  TextStyle get lightItalic => copyWith(
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.italic,
        fontSize: fontSize,
      );

  ///v400
  TextStyle get regular => copyWith(
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
      );
  TextStyle get regularItalic => copyWith(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        fontSize: fontSize,
      );

  ///v500
  TextStyle get medium => copyWith(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
      );
  TextStyle get mediumItalic => copyWith(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        fontSize: fontSize,
      );

  ///v600
  TextStyle get semiBold => copyWith(
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
      );
  TextStyle get semiBoldItalic => copyWith(
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
        fontSize: fontSize,
      );

  ///v700
  TextStyle get bold => copyWith(
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
      );
  TextStyle get boldItalic => copyWith(
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
        fontSize: fontSize,
      );

  ///v800
  TextStyle get extraBold => copyWith(
        fontWeight: FontWeight.w800,
        fontSize: fontSize,
      );
  TextStyle get extraBoldItalic => copyWith(
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.italic,
        fontSize: fontSize,
      );

  ///v900
  TextStyle get black => copyWith(
        fontWeight: FontWeight.w900,
        fontSize: fontSize,
      );
  TextStyle get blackItalic => copyWith(
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
        fontSize: fontSize,
      );
}
