import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Costomcicleicom extends StatelessWidget {
  const Costomcicleicom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: AppColor.brown,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 2,
          color: AppColor.brown,
        ),
      ),
      child: const Icon(
        FontAwesomeIcons.add,
        color: AppColor.white,
        size: 20,
      ),
    );
  }
}
