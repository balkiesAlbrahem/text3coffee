import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Costombuttombuydetail extends StatelessWidget {
  const Costombuttombuydetail({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("object");
      },
      child: Container(
        height: 50,
        width: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColor.brown,
        ),
        child: const Center(
          child: Text(
            "Buy Now",
            style: TextStyle(
              color: AppColor.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
