//INICIA JUNTO COM O APP

import 'package:get/get.dart';
import 'package:get_dependencias/pages/initial_binding/auth_model.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthModel(
        name: 'leo',
        email: 'leo@leo.com',
        curso: 'AdF',
      ),
      permanent: true,
    );
  }
}
