import 'package:flutter/material.dart';
//metodos_home_page

class MetodosHomePage extends StatelessWidget {
  const MetodosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Métodos'),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/put');
              },
              child: const Text('Put'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/lazyPut');
              },
              child: const Text('Lazy Put'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/putAsync');
              },
              child: const Text('Put Async'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/create');
              },
              child: const Text('Crate'),
            ),
          ],
        ),
      ),
    );
  }
}
