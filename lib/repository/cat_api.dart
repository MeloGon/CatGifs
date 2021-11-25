import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class CatGifApi {
  //url global
  String urlGlobal = 'http://cataas.com/';

  ///Metodo que hara el consumo desde el api para obtener los gifs de los gatos
  Future<Uint8List> getCatGif() async {
    String urlCatGif = urlGlobal + 'cat/gif';

    //podemos usar un consumo por medio de http para consultas mas complejas
    //devolviendo un response,body y adaptandolo a un json correspondiente a un modelo mas complejo
    //var response = await http.get(Uri.parse(urlCatGif));

    //la obtencion del gif al ser un consumo simple podemos hacerlo de esta forma
    final ByteData imageData =
        await NetworkAssetBundle(Uri.parse(urlCatGif)).load("");
    final Uint8List bytes = imageData.buffer.asUint8List();
    return bytes;
  }
}
