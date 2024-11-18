import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro2flu/controller/onboardingcontroller.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';
import 'package:pro2flu/data/datasource/static/dateofOnboarding.dart';

class CustomDotpointonboarding extends StatelessWidget {
  const CustomDotpointonboarding({super.key});

  @override
  Widget build(BuildContext context) {
    // rebuild for this widget
    return GetBuilder<OnboardingController>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.all(2),
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: controller.numberpage == index
                            ? AppColor.brown
                            : AppColor.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ));
  }
}
