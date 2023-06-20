import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<CounterController>(
              init: CounterController(),
              builder: (controller) {
                return Text('data ${controller.nama.value}');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.find<CounterController>().upperCase();
                },
                child: Text('tambah'))
          ],
        ),
      ),
    );
  }
}
