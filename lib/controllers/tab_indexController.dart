import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TabIndexController extends GetxController {
  Rx _currTab = 0.obs;

  int get currTab => _currTab.value;

  set changeCurrTabVAlue(int value) {
    _currTab.value = value;
  }
}
