import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Costomcircelcheck extends StatelessWidget {
  const Costomcircelcheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.brown,
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
              color: AppColor.brown,
            )
          ]),
      child: const Center(
        child: Icon(
          FontAwesomeIcons.check,
          color: AppColor.white,
          size: 15,
        ),
      ),
    );
  }
}
