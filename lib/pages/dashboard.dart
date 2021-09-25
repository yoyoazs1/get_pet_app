import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get_pet_app/pages/account_view.dart';
import 'package:get_pet_app/pages/home_view.dart';
import 'package:get_pet_app/pages/messages_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [HomePage(), MessagesPage(), AccountPage()],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                  activeIcon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_outlined),
                  label: "Favorites",
                  activeIcon: Icon(Icons.favorite)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline),
                  label: "Add",
                  activeIcon: Icon(Icons.add_circle)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined),
                  label: "Messages",
                  activeIcon: Icon(Icons.message)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: "Account",
                  activeIcon: Icon(Icons.account_circle))
            ],
          ),
        );
      },
    );
  }
}
