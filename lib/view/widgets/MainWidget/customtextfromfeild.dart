import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Customtextfromfeild extends StatelessWidget {
  const Customtextfromfeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 5,
          color: Colors.grey.withOpacity(.3),
          spreadRadius: 0.2,
        )
      ]),
      child: Container(
        color: AppColor.white,
        child: TextFormField(
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            label: const Row(
              children: [
                Icon(
                  FontAwesomeIcons.search,
                  size: 16,
                  color: AppColor.grayy,
                ),
                Text(
                  "  Find your coffee",
                  style: TextStyle(color: AppColor.grayy),
                ),
              ],
            ),
            hoverColor: Color.fromARGB(255, 219, 216, 213),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 192, 188, 184),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 241, 234, 228),
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
