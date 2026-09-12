import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color white = Color(0xFFFFFFFF);
  static const Color primaryColor = blue;
  static const Color primaryColorDark = blue;
  static const Color secondaryColor = blue;
  static const Color accentColor = blue;
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color backgroundColorGray = Color(0xFFF1F1F1);
  static const Color scaffoldBackgroundColor = Color(0xFFFFFFFF);

  static const Color textColor = Color(0xFF212121);
  static const Color textSecondaryColor = Color(0xFF757575);
  static const Color textHintColor = Color(0xFFB4B4B8);
  static const Color borderColor = Color(0xFFD9DADE);
  static const Color dividerColor = borderColor;
  static const Color sessionColor = Color(0xFFF3F3F3);
  static const Color shadowColor = Color(0x809e9e9e);

  static const Color errorColor = red;
  static const Color warningColor = Color(0xFFFF9C46);
  static const Color infoColor = Color(0xFF2190FE);

  static const Color splashColor = Color(0x332561F7);
  static const Color selectedColor = Color(0xFFE5F4E8);

  static const Color red = Color(0xFFDC2626);
  static const Color orange = Color(0xFFFF9C46);
  static const Color blue = Color(0xff1565c0);
  static const Color green = Color.fromARGB(255, 12, 153, 35);
  static const Color greenLight = Color(0xFF72D081);
  static const Color green2 = Color(0xFFC2ECD4);
  static const Color green3 = Color(0xFF27AE60);

  static const Color orange500 = Color(0xFFFF5A1F);
  static const Color red50 = Color(0xFFFDF2F2);
  static const Color red100 = Color(0xFFFDE8E8);
  static const Color red200 = Color(0xFFFBD5D5);
  static const Color red400 = Color(0xFFF98080);
  static const Color red500 = Color(0xFFF05252);
  static const Color red600 = Color(0xFFE02424);

  static const Color primary50 = Color(0xFFEBF5FF);
  static const Color primary100 = Color(0xFFE1EFFE);
  static const Color primary200 = Color(0xFFC3DDFD);
  static const Color primary300 = Color(0xFFA4CAFE);
  static const Color primary400 = Color(0xFF76A9FA);
  static const Color primary500 = Color(0xFF3F83F8);
  static const Color primary600 = Color(0xFF1C64F2);
  static const Color primary700 = Color(0xFF1A56DB);

  static const Color gray50 = Color(0xFFF9FAFB);
  static const Color gray100 = Color(0xFFF3F4F6);
  static const Color gray200 = Color(0xFFE5E7EB);
  static const Color gray300 = Color(0xFFD1D5DB);
  static const Color gray400 = Color(0xFF9CA3AF);
  static const Color gray500 = Color(0xFF6B7280);
  static const Color gray600 = Color(0xFF4B5563);
  static const Color gray700 = Color(0xFF374151);
  static const Color gray800 = Color(0xFF1F2A37);
  static const Color gray900 = Color(0xFF111928);
  static const Color iconDark = Color(0xFF200E32);
  static const Color orange400 = Color(0xFFFF8A4C);
  static const Color orange200 = Color(0xFFFCD9BD);
  static const Color orange300 = Color(0xFFFFC24C);
  static const Color orange100 = Color(0xFFFEECDC);
  static const Color orange50 = Color(0xFFFFF8F1);

  static const Color green50 = Color(0xFFF3FAF7);
  static const Color green100 = Color(0xFFDEF7EC);
  static const Color green200 = Color(0xFFBCF0DA);
  static const Color green500 = Color(0xFF0E9F6E);
  static const Color green600 = Color(0xFF057A55);
  static const Color green700 = Color(0xFF046C4E);
  static const Color flashSaleColor = Color(0xFFFCEEE4);
  static const Color green300 = Color(0xFF7BBC38);
  static const Color green400 = Color(0xFF31C48D);

  static const Color graniteGray = Color(0xFF666666);
  static const Color backgroundGray = Color(0xFFF0F2F5);

  static const Color backgroundTranscript = Color(0xFFfbf8e7);
  static const Color backgroundAnswered = Color(0xfffefcf2);
  static const Color downloadableLink = Color(0xff8ab4f8);
  static const Color answerBackgroundColor = Color(0xfffefcf2);
  static const Color background3 = Color(0xFFF3F4F6);

  static const Color purple100 = Color(0xFFEDEBFE);
  static const Color purple200 = Color(0xFFDCD7FE);
  static const Color purple600 = Color(0xFF7E3AF2);

  static const Color pink600 = Color(0xFFD61F69);
  static const Color pink200 = Color(0xFFFAD1E8);
  static const Color grey100 = Color(0xFFF3F4F6);

  static const Color yellow100 = Color(0xFFFDF6B2);
  static const Color yellow200 = Color(0xFFFCE96A);
  static const Color yellow400 = Color(0xFFE3A008);
  static const Color yellow500 = Color(0xFFC27803);
  static const Color primary2 = Color(0xFF111928);

  static BoxDecoration highLightBackground(String color) {
    return (color.isNotEmpty)
        ? BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
            Color(int.tryParse('0xFF$color') ?? 0),
            Colors.white,
          ]))
        : const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.white,
              ],
            ),
          );
  }

  static const Color blue100 = Color(0xFFE1EFFE);
  static const Color blue400 = Color(0xFF76A9FA);
  static const Color blue300 = Color(0xFFA4CAFE);

  static const Color indigo50 = Color(0xFFF0F5FF);
  static const Color indigo100 = Color(0xFFE5EDFF);
  static const Color indigo200 = Color(0xFFCDDBFE);
  static const Color indigo600 = Color(0xFF5850EC);
  static const Color indigo700 = Color(0xFF5145CD);
  static const Color violet = Color(0xFF8B5CF6);
  static const Color violet100 = Color(0xFFEDE9FE);

  static const Color amber50 = Color(0xFFFFFBEB);
  static const Color amber100 = Color(0xFFFEF3C7);
  static const Color amber400 = Color(0xFFFBBF24);
  static const Color amber600 = Color(0xFFD97706);
  static const Color amber700 = Color(0xFFB45309);

  static const Color purple50 = Color(0xFFFAF5FF);
  static const Color purple400 = Color(0xFFC084FC);
  static const Color purple500 = Color(0xFF8B5CF6);
  static const Color purple700 = Color(0xFF7E22CE);

  static const Color teal50 = Color(0xFFF0FDFA);
  static const Color teal100 = Color(0xFFCCFBF1);
  static const Color teal400 = Color(0xFF2DD4BF);
  static const Color teal500 = Color(0xFF14B8A6);
  static const Color teal600 = Color(0xFF0D9488);
  static const Color teal700 = Color(0xFF0F766E);
  static const Color teal500Light = Color(0xFF2DD4BF);
}
