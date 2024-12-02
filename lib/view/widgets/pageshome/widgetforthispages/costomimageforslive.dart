import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomcontanerdetail.dart';

class Costomimageforslive extends StatelessWidget {
  const Costomimageforslive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: const DecorationImage(
          image: AssetImage("asset/images/w1.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // const SizedBox(
          //   height: 50,
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    padding: const EdgeInsets.only(left: 12),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          //
          const Costomcontanerdetail(),
        ],
      ),
    );
  }
}
