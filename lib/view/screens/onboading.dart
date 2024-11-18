import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro2flu/controller/onboardingcontroller.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';
import 'package:pro2flu/view/widgets/onboardingWidget/custombottum.dart';
import 'package:pro2flu/view/widgets/onboardingWidget/customslideronboarding.dart';
import 'package:pro2flu/view/widgets/onboardingWidget/dotpointonboarding.dart';

class OnBoading extends StatelessWidget {
  const OnBoading({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return const Scaffold(
      backgroundColor: AppColor.backgroungbrown,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Customslideronboarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotpointonboarding(),
                  SizedBox(
                    height: 20,
                  ),
                  Custombottumonboarding()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
