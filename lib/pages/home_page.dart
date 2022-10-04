import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';
import 'package:get_dependencias/pages/bindings/home_bindings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('metodos');
              },
              child: const Text('Métodos'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bindings');
              },
              child: const Text('Bindings'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bindings_builder');
              },
              child: const Text('Bindings Builder'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bindings_builder_put');
              },
              child: const Text('Bindings Builder Put'),
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  const HomeBindings(),
                  binding: BindingsBuilder.put(
                    () => BindingsController(nome: 'Inicializado pelo Binding sem rota'),
                  ),
                );
              },
              child: const Text('Bindings sem rota nomeada'),
            ),
          ],
        ),
      ),
    );
  }
}
