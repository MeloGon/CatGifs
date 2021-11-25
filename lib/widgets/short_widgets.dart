import 'package:fluttertoast/fluttertoast.dart';

/// Clase que tiene los widgets mas pequeños pueden ser toast o textos estaticos
class Widgets {
  ///Muestra un mensaje por medio de un toast
  void toast(
    String message,
  ) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        fontSize: 14.0);
  }
}

Widgets widgets = Widgets();
