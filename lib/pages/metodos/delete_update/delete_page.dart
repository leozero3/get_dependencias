import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_controller.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({Key? key}) : super(key: key);

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  String nome = '';

  @override
  void dispose() {
    Get.delete<DeleteController>(force: true);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nome = Get.find<DeleteController>().nome;
                });
              },
              child: const Text('Buscar Nome'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.replace(
                    DeleteController(nome: 'Alterado no click do botao'));
              },
              child: const Text('Alterando Instancia'),
            ),
          ],
        ),
      ),
    );
  }
}
