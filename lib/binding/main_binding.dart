

import 'package:charts/home_scrren/domain/home_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());

}
}
