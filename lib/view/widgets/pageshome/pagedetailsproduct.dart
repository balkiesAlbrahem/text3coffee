import 'package:flutter/material.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costombuttombuydetail.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomcicleicom.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomimageforslive.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomtiteprice.dart';

class PageDetailstoprodect extends StatefulWidget {
  PageDetailstoprodect({super.key});

  @override
  State<PageDetailstoprodect> createState() => _PageDetailstoprodectState();
}

class _PageDetailstoprodectState extends State<PageDetailstoprodect> {
  int selectedIndex = 0;
  int selectedIndex1 = 0;
  final List<String> titles = [
    "White Chocolate",
    "Milk Chocolate",
    "Dark Chocolate",
  ];
  final List<String> types = [
    "S",
    "M",
    "L",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //
      body: Center(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 400,
              floating: true,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.all(5),
                  child: Costomimageforslive(),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1, // عدد العناصر
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child:
                   Container(
                      height: size.height * 0.85,
                      // color: AppColor.brown,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Description",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nVet tincidunt et ullamcorper eu, vivamus semper\ncommodo.",
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColor.deepgray,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Choice of Chocolate",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            // color: AppColor.deepgray,
                            height: 35,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: titles.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 15,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: selectedIndex == index
                                              ? AppColor.brown
                                              : AppColor.white,
                                          border: Border.all(
                                            width: 1,
                                            color: selectedIndex == index
                                                ? AppColor.brown
                                                : AppColor.deepgray,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 5,
                                        ),
                                        child: Text(
                                          titles[index],
                                          style: TextStyle(
                                            color: selectedIndex == index
                                                ? AppColor.white
                                                : AppColor.deepgray,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "Size",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              Text(
                                "Quantity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                // color: const Color.fromRGBO(135, 134, 133, 1),
                                width: 170,
                                height: 40,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: types.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedIndex1 = index;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          right: 15,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: selectedIndex1 == index
                                                ? AppColor.brown
                                                : const Color.fromARGB(
                                                    255, 223, 221, 218),
                                            border: Border.all(
                                              width: 1,
                                              color: selectedIndex1 == index
                                                  ? AppColor.brown
                                                  : const Color.fromARGB(
                                                      255, 223, 221, 218),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 15,
                                              vertical: 0,
                                            ),
                                            child: Center(
                                              child: Text(
                                                types[index],
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: selectedIndex1 == index
                                                      ? AppColor.white
                                                      : AppColor.deepgray,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 35,
                              ),
                              const SizedBox(
                                height: 50,
                                width: 160,
                                // color: Color.fromARGB(255, 161, 151, 151),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Costomcicleicom(),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Costomcicleicom(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Costomtiteprice(),
                              SizedBox(
                                width: 10,
                              ),
                              Costombuttombuydetail(),
                            ],
                          )
                        ],
                      )),
               
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Column(
//                 children: [
//                   Container(
//                     width: size.width,
//                     height: size.height * 0.05,
//                     color: Colors.red,
//                     child: Stack(
//                       children: [
//                         Container(
//                           color: Colors.lime,
//                           height: size.height * 0.04,
//                           width: size.width,
//                           child: ListView.builder(
//                               itemCount: taps.length,
//                               scrollDirection: Axis.horizontal,
//                               itemBuilder: (context, index) {
//                                 return Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Text(taps[index]),
//                                 );
//                               }),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),

//  Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 100,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             color: AppColor.white,
//                             borderRadius: BorderRadius.circular(20),
//                             image: const DecorationImage(
//                               image:
//                                   AssetImage(LinkImageAsset.onboardingimage1),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const Text(
//                         "Espresso",
//                         style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       )
//                     ],
//                   ),
