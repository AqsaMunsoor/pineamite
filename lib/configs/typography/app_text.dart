part of '../configs.dart';

class AppText {
  // Font sizes
  static AppTextStyle get h2 => const AppTextStyle(fontSize: 28);
  static AppTextStyle get b2 => const AppTextStyle(fontSize: 14);
  static AppTextStyle get b3 => const AppTextStyle(fontSize: 12);
  static AppTextStyle get b1 => const AppTextStyle(fontSize: 18);
  static AppTextStyle get t1 => const AppTextStyle(fontSize: 24);
  static AppTextStyle get t2 => const AppTextStyle(fontSize: 22);
  static AppTextStyle get t3 => const AppTextStyle(fontSize: 11);

  static AppTextStyle get t06 => const AppTextStyle(fontSize: 06);
  static AppTextStyle get t12 => const AppTextStyle(fontSize: 12);
  static AppTextStyle get t14 =>
      const AppTextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  static AppTextStyle get t16 =>
      const AppTextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  static AppTextStyle get t18 =>
      const AppTextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  static AppTextStyle get t20 =>
      const AppTextStyle(fontSize: 20, fontWeight: FontWeight.w600);

  // Font weights
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}
