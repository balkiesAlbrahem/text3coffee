import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomaddincard.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomareaandprice.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomcircelcheck.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomconsttextcard.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomcontaimage.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomnameproductcard.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomnubercard.dart';

class Costomoneproductcard extends StatelessWidget {
  const Costomoneproductcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.grey.withOpacity(.3),
            spreadRadius: 0.1,
          )
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 25,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Costomcircelcheck(),
            SizedBox(
              width: 10,
            ),
            Costomcontaimage(
              stringimage: "asset/images/w1.png",
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Costomnameproductcard(
                  nameproduct: "Cappacinno with Chocolate",
                ),
                SizedBox(
                  height: 12,
                ),
                Costomareaandprice(
                  area: 'US',
                  price: '10.00',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Costomconsttextcard(),
                    SizedBox(
                      width: 10,
                    ),
                    Costomaddincard(),
                    Costomnubercard(
                      number: "1",
                    ),
                    Costomaddincard(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
