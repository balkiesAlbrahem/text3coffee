import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Costomcontaimage extends StatelessWidget {
  final String stringimage;
  const Costomcontaimage({super.key, required this.stringimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.black,
        image:  DecorationImage(
          image: AssetImage(
           stringimage,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
