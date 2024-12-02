import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';

class Costomcontanerdetail extends StatelessWidget {
  const Costomcontanerdetail({super.key});

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return      Container(
                          width: size.width * 1,
                          height: size.height * 0.18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black45,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(25),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Espresso",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.white,
                                            fontSize: 24,
                                          ),
                                        ),
                                        Text(
                                          "With chocolate",
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                            color: AppColor.white,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.add_ic_call,
                                          color: AppColor.white,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Coffee",
                                          style: TextStyle(
                                            color: AppColor.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.texture_rounded,
                                          color: AppColor.white,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Chocolate",
                                          style: TextStyle(
                                            color: AppColor.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "4.8",
                                          style: TextStyle(
                                            color: AppColor.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "(6,098)",
                                          style: TextStyle(
                                            color: AppColor.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Text(
                                          "Medium Roasted",
                                          style: TextStyle(
                                            color: AppColor.white,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      
                      ;
  }
}