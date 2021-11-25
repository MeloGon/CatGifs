import 'dart:async';

import 'package:azumo_app/utils/dimens.dart';
import 'package:azumo_app/utils/paths.dart';
import 'package:azumo_app/utils/styles.dart';
import 'package:azumo_app/views/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

///Esta es una forma de hacer un splashScreen, pero tambien existe una de forma nativa pero el diseño tiene que ser mas trabajado
///dicha forma es usando una dependencia ademas.
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //duracion del splash a mostrar
    Timer(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: dimens.fullWidth(context),
          height: dimens.fullHeigth(context),
          padding: dimens.top(context, .3),
          child: Column(
            children: [
              Text(
                'GIF CATS',
                style: styles.titleStyle,
              ),
              const Text('By Kevyn Melo'),
              const Spacer(),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  paths.catBg,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
