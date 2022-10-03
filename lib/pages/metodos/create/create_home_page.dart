import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/create/create_controller.dart';

class CreateHomePage extends StatefulWidget {
  CreateHomePage({Key? key}) : super(key: key) {
    Get.create(() => CreateController());
    Get.put(CreateController(), tag: 'put');
  }

  @override
  State<CreateHomePage> createState() => _CreateHomePageState();
}

class _CreateHomePageState extends State<CreateHomePage> {
  String nome = '';
  String nomePut = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            Text('Nome PUT: $nomePut'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nome = Get.find<CreateController>().nome;
                  nomePut = Get.find<CreateController>(tag: 'put').nome;
                });
              },
              child: const Text('Buscar nome'),
            ),
          ],
        ),
      ),
    );
  }
}
