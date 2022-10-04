import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';

class HomeBindings extends StatelessWidget {
  const HomeBindings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Buildando nossa pagina HomeBindings');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bindings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<BindingsController>().nome),
            // Text(Get.find<String>()),
          ],
        ),
      ),
    );
  }
}
