import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/controllers/tab_indexController.dart';
import 'package:foodly/views/Cart/cart.dart';
import 'package:foodly/views/Home/home.dart';
import 'package:foodly/views/Profile/profile.dart';
import 'package:foodly/views/Search/search.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});
  List<Widget> currentPage = [Home(), Search(), Cart(), Profile()];
  @override
  Widget build(BuildContext context) {
    final tabcontroller = Get.put(TabIndexController());
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            currentPage[tabcontroller.currTab],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: BottomNavigationBar(
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      unselectedItemColor:
                          const Color.fromARGB(255, 70, 70, 70),
                      selectedItemColor: kSecondary,
                      onTap: (value) {
                        tabcontroller.changeCurrTabVAlue = value;
                      },
                      currentIndex: tabcontroller.currTab,
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(tabcontroller.currTab == 0
                                ? AntDesign.appstore1
                                : AntDesign.appstore_o),
                            label: "home"),
                        const BottomNavigationBarItem(
                            icon: Icon(Icons.search), label: "search"),
                        const BottomNavigationBarItem(
                            icon: Badge(
                                label: Text("1"),
                                child: Icon(Icons.shopping_cart)),
                            label: "cart"),
                        const BottomNavigationBarItem(
                            icon: Icon(FontAwesome.user_circle),
                            label: "profile"),
                      ])),
            )
          ],
        ),
      ),
    );
  }
}
