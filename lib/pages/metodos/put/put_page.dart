import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/metodos/put/put_controller.dart';
import 'package:get_dependencias/pages/metodos/put/put_controllerPermanent.dart';
//put_page

class PutPage extends StatefulWidget {
  const PutPage({Key? key}) : super(key: key);

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {

  final controller = Get.put(PutController());
  final controller2 = Get.put(PutControllerPermanent(), permanent: true);
  final controller3 = Get.put(PutControllerPermanent());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Put'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Time PUT: ${controller.timeStamp}'),
            Text('Time PUT: ${controller2.timeStamp}'),
            WidgetInterno()
          ],
        ),
      ),
    );
  }
}


class WidgetInterno extends StatelessWidget {
  const WidgetInterno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${Get.find<PutController>().timeStamp}'),
      ],
    );
  }
}

