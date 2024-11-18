import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Customtextfromfeild extends StatelessWidget {
  const Customtextfromfeild({super.key});

  @override
  Widget build(BuildContext context) {
    return   TextFormField(
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: const Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: AppColor.grayy,
                            ),
                            Text(
                              "Find your coffee",
                              style: TextStyle(color: AppColor.grayy),
                            ),
                          ],
                        ),
                        hoverColor: AppColor.grayy,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColor.grayy,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: AppColor.grayy,
                            width: 2.0,
                          ),
                        ),
                      ),
                    )
                ;
  }
}