import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';
import 'package:pro2flu/view/widgets/MainWidget/customimageprofile.dart';
import 'package:pro2flu/view/widgets/MainWidget/custommenu.dart';
import 'package:pro2flu/view/widgets/MainWidget/custommenufilter.dart';
import 'package:pro2flu/view/widgets/MainWidget/customtextfromfeild.dart';
import 'package:pro2flu/view/widgets/MainWidget/customtitle.dart';
import 'package:pro2flu/view/widgets/pageshome/pagedetailsproduct.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/customcard.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int selectedIndex = 0;
  final List<String> titles = ["Expresso", "Latte", "Cappuccino", "Cafetiere"];

  // خريطة لتخزين المنتجات لكل عنوان
  final Map<String, List<String>> products = {
    "Expresso": ["Product 1", "Product 2", "Product 3"],
    "Latte": ["Product 4", "Product 5", "Product 6"],
    "Cappuccino": ["Product 7", "Product 8"],
    "Cafetiere": ["Product 9", "Product 10", "Product 11", "Product 12"],
  };

  @override
  Widget build(BuildContext context) {
    // المنتجات الحالية بناءً على العنوان المختار
    final currentProducts = products[titles[selectedIndex]] ?? [];

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 40,
          ),
          child: Column(
            children: [
              // Header Row
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Custommenu(),
                  Customimageprofile(),
                ],
              ),
              const SizedBox(height: 10),
              const Customtitle(),
              const SizedBox(height: 10),
              // Search Row
              const Row(
                children: [
                  Expanded(child: Customtextfromfeild()),
                  SizedBox(width: 10),
                  Custommenufilter(),
                ],
              ),
              const SizedBox(height: 15),
              // Horizontal ListView for Titles
              SizedBox(
                height: 25,
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              titles[index],
                              style: TextStyle(
                                color: selectedIndex == index
                                    ? AppColor.brown
                                    : AppColor.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(width: 15),
                  ...List.generate(
                    titles.length,
                    (i) => AnimatedContainer(
                      margin: EdgeInsets.only(
                        right: (selectedIndex >= 3) ? 20 : 65,
                      ),
                      duration: const Duration(milliseconds: 300),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: selectedIndex == i
                            ? AppColor.brown
                            : AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // GridView for Products
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: currentProducts.length, // عدد المنتجات بناءً على العنوان المختار
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => PageDetailstoprodect());
                      },
                      child: CustomCard(
                        productName: currentProducts[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
