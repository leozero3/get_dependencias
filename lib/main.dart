import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/bindings/bindings_controller.dart';
import 'package:get_dependencias/pages/bindings/bindings_exemple.dart';
import 'package:get_dependencias/pages/bindings/home_bindings.dart';
import 'package:get_dependencias/pages/bindings/middlewares_binding.dart';
import 'package:get_dependencias/pages/home_page.dart';
import 'package:get_dependencias/pages/initial_binding/initial_binding.dart';
import 'package:get_dependencias/pages/initial_binding/initial_binding_page.dart';
import 'package:get_dependencias/pages/metodos/create/create_home_page.dart';
import 'package:get_dependencias/pages/metodos/delete_update/delete_page.dart';
import 'package:get_dependencias/pages/metodos/delete_update/update_home_page.dart';
import 'package:get_dependencias/pages/metodos/lazyPut/lazy_put_page.dart';
import 'package:get_dependencias/pages/metodos/metodos_home_page.dart';
import 'package:get_dependencias/pages/metodos/put/put_page.dart';
import 'package:get_dependencias/pages/metodos/putAsync/put_async_page.dart';
import 'package:get_dependencias/pages/service/storage_page.dart';
import 'package:get_dependencias/pages/service/storage_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(
            name: '/metodos',
            page: () => const MetodosHomePage(),
            children: [
              GetPage(name: '/put', page: () => const PutPage()),
              GetPage(name: '/lazyPut', page: () => LazyPutPage()),
              GetPage(name: '/putAsync', page: () => PutAsyncPage()),
              GetPage(name: '/create', page: () => CreateHomePage()),
              GetPage(name: '/update', page: () => UpdateHomePage()),
              GetPage(name: '/delete', page: () => const DeletePage()),
            ]),
        GetPage(
          name: '/bindings',
          binding: BindingsExemple(),
          middlewares: [MiddlewaresBinding()],
          page: () => const HomeBindings(),
        ),
        GetPage(
          name: '/bindings_builder',
          binding: BindingsBuilder(() {
            Get.put(BindingsController(
                nome: 'Inicializado dentro do Bindings (Builder)'));
          }),
          page: () => const HomeBindings(),
        ),
        GetPage(
          name: '/bindings_builder_put',
          binding: BindingsBuilder.put(() {
            BindingsController(
                nome: 'Inicializado dentro do Bindings (Builder Put)');
          }),
          page: () => const HomeBindings(),
        ),
        GetPage(
          name: '/initial_binding',
          page: () => const InitialBindingPage(),
        ),
        GetPage(
          name: '/services',
          page: () =>  const StoragePage(),
        ),
      ],
    );
  }
}
