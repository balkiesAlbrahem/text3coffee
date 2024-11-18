import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/linkimageasset.dart';

class Customimageprofile extends StatelessWidget {
  const Customimageprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          image: AssetImage(
            LinkImageAsset.mainimageprofile,
          ),
          fit: BoxFit.fill,
        ),
      ),
      // child: Text("."),
    );
  }
}
