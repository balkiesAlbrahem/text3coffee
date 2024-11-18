import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pro2flu/controller/onboardingcontroller.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Custombottumonboarding extends GetView<OnboardingController> {
  const Custombottumonboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(30)),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 30,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          color: AppColor.brown,
          onPressed: () {
            controller.next();
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dive In  ",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColor.white,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                size: 20,
                color: AppColor.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
