import 'package:get/get.dart';

class CounterController extends GetxController {
  var angka = 0.obs;
  var nama = 'udin'.obs;

  void increment() => angka++;
  void upperCase() => nama.value = nama.value.toUpperCase();
}
