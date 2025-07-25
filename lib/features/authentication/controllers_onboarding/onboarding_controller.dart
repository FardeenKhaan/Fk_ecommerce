import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  // variables
  final pagecontroller = PageController();
  Rx<int> currentPageIndex = 0.obs;
  // methods
  void updatePageIndicator(index) => currentPageIndex.value = index;
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pagecontroller.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pagecontroller.jumpToPage(page);
    }
  }

  void SkipPage() {
    currentPageIndex.value = 2;
    pagecontroller.jumpToPage(2);
  }
}
