import 'package:foodu_food_delivery_app_ui/view/Sign%20up,%20&%20Sign%20in/Controller/loginController.dart';
import 'package:get/get.dart';

import 'homeController.dart';

class Binding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<LoginController>(() => LoginController());

  }

}