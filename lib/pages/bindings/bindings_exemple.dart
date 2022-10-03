import 'package:get/get.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';

class BindingsExemple extends Bindings{
  @override
  void dependencies() {
    Get.put(BindingsController(nome: 'Inicializado dentro do Bindings'));
  }


}