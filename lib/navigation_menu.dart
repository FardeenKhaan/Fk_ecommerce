import 'package:fk_ecommerce/features/authentication/screens/home/home.dart';
import 'package:fk_ecommerce/features/authentication/screens/store/store.dart';
import 'package:fk_ecommerce/features/authentication/screens/wishlist/wishlist.dart';
import 'package:fk_ecommerce/utils/constants/colors.dart';
import 'package:fk_ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkmode = FkHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          elevation: 0,
          height: 80,
          backgroundColor: darkmode ? Colors.black : Colors.white,
          indicatorColor: darkmode ? FKColors.white.withOpacity(0.1) : FKColors.black.withOpacity(0.1),
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Store'),
            NavigationDestination(icon: Icon(Icons.notifications), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  // void onDestinationSelected(int index) {
  //   selectedIndex.value = index;
  //   // Add navigation logic here if needed
  // }
  final screens = [
    HomeScreen(),
    FkStoreScreen(),
    FavouriteScreen(),
    // Container(color: Colors.green),
    // Container(color: Colors.deepPurple),
    // Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];
}
