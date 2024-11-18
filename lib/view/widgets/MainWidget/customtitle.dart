import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Customtitle extends StatelessWidget {
  const Customtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          " Find the best \n Coffee to your taste",
          style: TextStyle(
            color: AppColor.deepbrown,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
