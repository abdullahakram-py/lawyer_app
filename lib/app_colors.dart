import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color backgroundTop = Color(0xFF0B1026);
  static const Color backgroundMiddle = Color(0xFF1B1F5C);
  static const Color backgroundBottom = Color(0xFF3B3FD9);
  static const Color accent = Color(0xFF5B5CFF);
  static const Color cyan = Color(0xFF22D3EE);
  static const Color gold = Color(0xFFFBBF24);
  static const Color success = Color(0xFF34D399);
  static const Color error = Color(0xFFF87171);
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFA5ADCF);
  static const Color textMuted = Color(0xFF6B7299);
  static const Color violet = Color(0xFF8A5CFF);
  static const Color teal = Color(0xFF0F9FAD);
  static const Color blue = Color(0xFF1768D5);
  static const Color darkCard = Color(0xFF22213D);
  static const Color darkGold = Color(0xFF6D4821);
  static const Color mastercardRed = Color(0xFFEB001B);
  static const Color mastercardYellow = Color(0xFFF79E1B);
  static const Color chipGold = Color(0xFFDAB86B);
  static const Color transparent = Color(0x00000000);
  static const Color glassSurface = Color(0x1FFFFFFF);
  static const Color glassBorder = Color(0x26FFFFFF);
  static const Color whiteFaint = Color(0x12FFFFFF);
  static const Color cardShine = Color(0x2EFFFFFF);
  static const Color balanceGlowStart = Color(0x4022D3EE);
  static const Color balanceGlowEnd = Color(0x005B5CFF);
  static const Color accentShadow = Color(0x405B5CFF);
  static const Color cardShadow = Color(0x303B3FD9);
  static const Color actionShadow = Color(0x3322D3EE);
  static const Color actionBorder = Color(0x3322D3EE);
  static const Color actionSurface = Color(0x265B5CFF);
  static const Color successPill = Color(0x2634D399);
  static const Color successBorder = Color(0x4034D399);
  static const Color sparklineFill = Color(0x1A22D3EE);
  static const Color cardMutedText = Color(0xD9FFFFFF);
  static const Color navSurface = Color(0xE6101535);
  static const Color navActive = Color(0xFF5B5CFF);
  static const Color navShadow = Color(0x4D0B1026);
  static const Color progressTrack = Color(0x336B7299);
  static const Color chipBorder = Color(0xCCF8E0A2);
  static const Color chipLine = Color(0xB34B3D24);
  static const Color avatarSurface = Color(0xFF141B3B);

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [backgroundTop, backgroundMiddle, backgroundBottom],
    stops: [0, .54, 1],
  );
  static const List<Color> balanceGlow = [balanceGlowStart, balanceGlowEnd];
  static const LinearGradient avatarGradient = LinearGradient(
    colors: [cyan, accent, violet],
  );
  static const LinearGradient balanceGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF343BC0), Color(0xFF5B4BD8), Color(0xFF7B4FCE)],
  );
  static const LinearGradient actionGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [actionSurface, Color(0x2922D3EE)],
  );
  static const LinearGradient cardIndigoGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF493ED1), Color(0xFF7B42C7)],
  );
  static const LinearGradient cardTealGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [teal, blue],
  );
  static const LinearGradient cardGoldGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [darkCard, darkGold],
  );
  static const LinearGradient savingIconGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF27295F), Color(0xFF3B2E71)],
  );

  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundTop,
    colorScheme: const ColorScheme.dark(
      primary: accent,
      secondary: cyan,
      surface: backgroundMiddle,
      error: error,
      onPrimary: textPrimary,
      onSecondary: backgroundTop,
      onSurface: textPrimary,
      onError: backgroundTop,
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      bodyColor: textPrimary,
      displayColor: textPrimary,
    ),
  );
}
