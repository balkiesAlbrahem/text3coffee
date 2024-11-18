import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro2flu/controller/onboardingcontroller.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';
import 'package:pro2flu/data/datasource/static/dateofOnboarding.dart';

class Customslideronboarding extends GetView<OnboardingController> {
  const Customslideronboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.pagechanges(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage(
                    onBoardingList[i].image,
                  ),
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 400,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  onBoardingList[i].title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColor.deepbrown,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  onBoardingList[i].body,
                  style: const TextStyle(
                      color: AppColor.browntextbody,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ));
  }
}
