import 'package:azumo_app/locator.dart';
import 'package:azumo_app/splash/splash_screen.dart';
import 'package:azumo_app/views/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  setup();
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //definimos las ruta inicial que sera el splash y definimos un name para las demas,
      //podemos agregarlas aqui mismo o al igual que styles, colors,dimens,
      //crear una clase routes y nombrarlas alli mismo
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
