import 'package:azumo_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Clase que administra los estilos, fuentes, etc para la aplicación
class Styles {
  var titleStyle = GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: colors.primaryColor));

  var regularStyle = GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15));

  var regularStyleWhite = GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: 15, color: Colors.white));
}

Styles styles = Styles();
