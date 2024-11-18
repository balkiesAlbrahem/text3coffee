import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Custommenu extends StatelessWidget {
  const Custommenu({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.widgets,
        color: AppColor.brown,
        size: 35,
      ),
    );
  }
}
