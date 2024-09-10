// ignore: file_names
import 'package:get/get.dart';

class HomeController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update(); // Notify the UI to rebuild with the new index
  }
}


// List<String> title = [
//   'Payment', "Message" , "E-Wallet" , "Profile"
// ];