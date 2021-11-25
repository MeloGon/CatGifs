import 'package:azumo_app/locator.dart';
import 'package:azumo_app/repository/cat_api.dart';

class CatGifController {
  ///llama al repositorio y obtiene el siguiente gif
  getNextGit() async {
    return locator.get<CatGifApi>().getCatGif();
  }
}
