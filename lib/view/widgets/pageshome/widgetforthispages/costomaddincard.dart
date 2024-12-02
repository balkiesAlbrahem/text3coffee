import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Costomaddincard extends StatelessWidget {
  const Costomaddincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: AppColor.white,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Center(
            child: Icon(
          Icons.add,
          size: 17,
        )),
      ),
    );
  }
}
