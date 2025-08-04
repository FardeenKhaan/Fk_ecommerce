// import 'package:fk_ecommerce/features/authentication/screens/login/login_screen.dart';
// import 'package:fk_ecommerce/routes/app_routes.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';

// class OnboardingController extends GetxController {
//   static OnboardingController get instance => Get.find();
//   // variables
//   final pagecontroller = PageController();
//   Rx<int> currentPageIndex = 0.obs;
//   // methods
//   void updatePageIndicator(index) => currentPageIndex.value = index;
//   void dotNavigationClick(index) {
//     currentPageIndex.value = index;
//     pagecontroller.jumpTo(index);
//   }

//   void nextPage() {
//     if (currentPageIndex.value == 2) {
//       Get.offAllNamed(Routes.LOGIN);
//     } else {
//       int page = currentPageIndex.value + 1;
//       pagecontroller.jumpToPage(page);
//     }
//   }

//   void SkipPage() {
//     currentPageIndex.value = 2;
//     pagecontroller.jumpToPage(2);
//   }
// }

import 'package:fk_ecommerce/features/authentication/screens/login/login_screen.dart';
import 'package:fk_ecommerce/routes/app_routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pagecontroller = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    Future.microtask(() => pagecontroller.jumpToPage(index));
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAllNamed(Routes.LOGIN);
    } else {
      int page = currentPageIndex.value + 1;
      Future.microtask(() => pagecontroller.jumpToPage(page));
    }
  }

  void SkipPage() {
    currentPageIndex.value = 2;
    Future.microtask(() => pagecontroller.jumpToPage(2));
  }

  @override
  void onClose() {
    pagecontroller.dispose();
    super.onClose();
  }
}
