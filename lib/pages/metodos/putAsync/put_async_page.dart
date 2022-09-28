import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PutAsyncPage extends StatelessWidget {
   PutAsyncPage({Key? key}) : super(key: key){
    Get.putAsync(() async{

      final prefs = SharedPreferences.getInstance()
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Put Async'),
          ),
      body: Center(

      ),
    );
  }
}
