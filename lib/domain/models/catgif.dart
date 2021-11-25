import 'dart:typed_data';

///CatGif object, si tuviera mas de un atributo podria hacerse el modelo autogenerado desde quicktype.io
class CatGif {
  Uint8List imageUrl;

  CatGif.fromJson(Map<String, dynamic> json) : imageUrl = json['imageUrl'];
}
