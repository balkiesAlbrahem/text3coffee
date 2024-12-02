import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro2flu/data/datasource/static/dateofOnboarding.dart';
import 'package:pro2flu/view/screens/homepage.dart';
// import 'package:pro2flu/view/screens/mainpage.dart';

class OnboardingController extends GetxController {
  late PageController pageController;
  int numberpage = 0;
  next() {
    numberpage++;
    if (numberpage > onBoardingList.length - 1) {
      Get.off(Homepage());
    } else {
      pageController.animateToPage(numberpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeOut);
    }
  }

  pagechanges(int indaex) {
    numberpage = indaex;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
