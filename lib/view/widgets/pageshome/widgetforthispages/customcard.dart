import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class CustomCard extends StatelessWidget {
   final String productName;
  const CustomCard({
    super.key, required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            color: Colors.grey.withOpacity(.3),
            spreadRadius: 0.2,
          )
        ],
      ),
      child: Container(
        height: 290,
        width: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColor.white,
        ),
        // elevation: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                      image: const DecorationImage(
                        image: AssetImage(
                          "asset/images/w1.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 140,
                    width: 180,
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      height: 30,
                      width: 80,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColor.white,
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
              productName,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "with Milk",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColor.deepgray,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "\$",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.brown,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "4.20",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: AppColor.brown,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 25,
                    color: AppColor.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
