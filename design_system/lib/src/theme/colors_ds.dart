import 'package:flutter/material.dart';

class ColorsDS {
  // Brand
  static const MaterialColor primary = MaterialColor(
    0xFF0500FF, // Valor hexadecimal da cor primária
    <int, Color>{
      50: Color(0xFFE3E3FF),
      100: Color(0xFFB9B9FF),
      200: Color(0xFF8C8CFF),
      300: Color(0xFF5F5FFF),
      400: Color(0xFF3D3DFF),
      500: Color(0xFF0000FF), // Cor primária
      600: Color(0xFF0000FF),
      700: Color(0xFF0000CC),
      800: Color(0xFF000099),
      900: Color(0xFF000066),
    },
  );

  // Neutral
  static const black = Color(0xFF1C1C1C);
  static const white = Color(0xFFFFFFFF);
  static const blue10 = Color(0xFFEDEFFB);
  static const gray20 = Color(0xFF9E9E9E);
  static const gray10 = Color(0xFDDFDFDF);
  static const gray05 = Color(0xFFF5F5F5);
  static const gray00 = Color(0xFFE0E0E0);

  // Não pode ser instanciado
  ColorsDS._();
}
