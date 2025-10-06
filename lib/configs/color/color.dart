part of '../configs.dart';

class AppColors {
  static const secondary = Color(0xFFA3FFFF);

  static const primary = Color(0xFFFF1FBC);
  static const primaryLight = Color(0xFFFD54CB);
  static const primaryLighter = Color(0xFFFDBCEE);
  static const primary50 = Color(0xFFFEE0F9);

  static const primaryDark = Color(0xFFCC00A7);

  static const cardDark = Color(0xFF2C1C4A);
  static const cardBorder = Color(0xFF392A56);
  static const iconDark = Color(0xFF4417BF);
  static const iconLight = Color(0xFFE4DFED);

  static const bottomBarBorder = Color(0xFF2C1C4A);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,

    colors: [primaryDark, primaryLight],
  );

  static const LinearGradient cardBackgroundGradient = LinearGradient(
    colors: [textDark, cardDark],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient bottomBarGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0xFF09001A), Color(0x8C2C1C4A)],
    stops: [0.2845, 1.0],
  );

  static const text = Colors.white;
  static const textLight = Color(0xFFD9D9D9);
  static const textLighter = Color(0xFFCCCCCC);
  static const textDark = Color(0xFF09001A);
  static const textGrey = Color(0xFF887F99);
  static const grey = Color(0xFF9494E5);

  static const wraningText = Color(0xFFFFECB4);

  static const Color chipBackground = Color(0x80503BD8);
}
