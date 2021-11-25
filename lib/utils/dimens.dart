import 'package:flutter/widgets.dart';

///Clase que administra las dimensiones que usaremos en el aplicativo
class Dimens {
  ///largo total de la pantalla
  fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// alto total de la pantalla
  fullHeigth(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// se puede utilizar en margin o padding de un widget toma como referencia el ancho de la pantalla
  fromLTRB(BuildContext context, left, top, right, bottom) {
    return EdgeInsets.fromLTRB(
      fullWidth(context) * left,
      fullWidth(context) * top,
      fullWidth(context) * right,
      fullWidth(context) * bottom,
    );
  }

  /// se puede utilizar en margin o padding de un widget toma como referencia el ancho de la pantalla
  top(BuildContext context, value) {
    return EdgeInsets.only(
      top: fullWidth(context) * value,
    );
  }

  /// se puede utilizar en margin o padding de un widget toma como referencia el ancho de la pantalla
  left(BuildContext context, value) {
    return EdgeInsets.only(
      left: fullWidth(context) * value,
    );
  }

  /// se puede utilizar en margin o padding de un widget toma como referencia el ancho de la pantalla
  right(BuildContext context, value) {
    return EdgeInsets.only(
      right: fullWidth(context) * value,
    );
  }

  /// se puede utilizar en margin o padding de un widget toma como referencia el ancho de la pantalla
  bottom(BuildContext context, value) {
    return EdgeInsets.only(
      bottom: fullWidth(context) * value,
    );
  }

  layoutPadding(BuildContext context) {
    return EdgeInsets.fromLTRB(fullWidth(context) * .05,
        fullWidth(context) * .05, fullWidth(context) * .05, 0);
  }
}

Dimens dimens = Dimens();
