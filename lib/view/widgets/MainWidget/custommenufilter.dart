import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Custommenufilter extends StatelessWidget {
  const Custommenufilter({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 47,
        decoration: const BoxDecoration(
          color: AppColor.brown,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22),
              topRight: Radius.circular(22),
              bottomRight: Radius.circular(27),
              bottomLeft: Radius.circular(10)),
        ),
        child: const Icon(
          Icons.widgets,
          color: AppColor.white,
        ),
      ),
    );
  }
}
