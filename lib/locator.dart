import 'package:azumo_app/domain/catfig_controller.dart';
import 'package:azumo_app/repository/cat_api.dart';
import 'package:get_it/get_it.dart';

///getIt locator instancia
final locator = GetIt.instance;

///método de configuración para crear nuestros servicios
void setup() {
  locator.registerLazySingleton(() => CatGifApi());
  locator.registerLazySingleton<CatGifController>(() => CatGifController());
}
