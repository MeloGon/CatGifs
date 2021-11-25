import 'dart:convert';
import 'dart:typed_data';

import 'package:azumo_app/domain/catfig_controller.dart';
import 'package:azumo_app/locator.dart';
import 'package:azumo_app/utils/colors.dart';
import 'package:azumo_app/utils/dimens.dart';
import 'package:azumo_app/utils/styles.dart';
import 'package:azumo_app/utils/paths.dart';
import 'package:azumo_app/widgets/short_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic visibleGif;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: NeumorphicTheme.baseColor(context),
        body: Stack(
          children: [
            Container(
                padding: dimens.top(context, .2),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    titleSection(),
                    gifSection(context),
                    buttonMeaw(),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  ///Podemos llevar estos metodos a una carpeta componentes y desglosarlo un poco mas
  ///Seccion del Gif
  SizedBox gifSection(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 200,
        child: visibleGif == null
            ? SizedBox(
                width: dimens.fullWidth(context) * .7,
                height: dimens.fullHeigth(context) * .4,
                child: Center(
                  child: Text(
                    'Por ahora no hay nada que mostrar\n\nPresiona Meaw para obtener gatitos',
                    style: styles.regularStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : Neumorphic(
                child: Container(
                    width: dimens.fullWidth(context) * .7,
                    height: dimens.fullHeigth(context) * .4,
                    child: FadeInImage(
                      fit: BoxFit.cover,
                      placeholder: AssetImage(paths.loadingGif),
                      image: MemoryImage(base64Decode(visibleGif)),
                    )),
              ));
  }

  ///Boton
  NeumorphicButton buttonMeaw() {
    return NeumorphicButton(
        onPressed: () async {
          widgets.toast('Cargando gatito :3 ...');
          //Localizamos el servicio usando GetIT como serviceLocator
          Uint8List catgif = await locator.get<CatGifController>().getNextGit();
          //Usamos el setState para refrescar y mostrar el nuevo gif
          setState(() {
            visibleGif = base64.encode(catgif);
          });
        },
        style: NeumorphicStyle(
          color: colors.primaryColor,
          shape: NeumorphicShape.convex,
          border: NeumorphicBorder.none(),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              FontAwesomeIcons.cat,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Meaw',
              style: styles.regularStyleWhite,
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              FontAwesomeIcons.cat,
              color: Colors.white,
            ),
          ],
        ));
  }

  ///Seccion del Titulo
  Text titleSection() {
    return Text(
      'MOSTRANDO GIF DE GATITOS',
      style: styles.titleStyle,
    );
  }
}
