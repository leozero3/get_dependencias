import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/initial_binding/auth_model.dart';

class InitialBindingPage extends StatelessWidget {
  const InitialBindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Binding'),
      ),
      body: Center(
        child: Text(Get.find<AuthModel>().name),
      ),
    );
  }
}
