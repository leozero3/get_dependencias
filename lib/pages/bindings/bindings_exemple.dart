import 'package:get/get.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';

class BindingsExemple extends Bindings{



  @override
  void dependencies() {
    print('Carregando as Instancias...');
    Get.put(BindingsController(nome: 'Inicializado dentro do Bindings'));
  }

  BindingsExemple(){
    print('Iniciando BindingsExemple');
  }
}