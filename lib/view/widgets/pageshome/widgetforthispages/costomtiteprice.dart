import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Costomtiteprice extends StatelessWidget {
  const Costomtiteprice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Price",
          style: TextStyle(
            fontSize: 14,
            color: AppColor.deepgray,
          ),
        ),
        Row(
          children: [
            Text(
              "\$ ",
              style: TextStyle(
                fontSize: 25,
                color: AppColor.brown,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "4.20",
              style: TextStyle(
                fontSize: 23,
                color: Color.fromARGB(255, 57, 56, 56),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
