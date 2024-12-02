import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro2flu/core/constants/Appcolor.dart';
import 'package:pro2flu/view/widgets/pageshome/widgetforthispages/costomoneproductcard.dart';

class Bodycard extends StatelessWidget {
  const Bodycard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.white,
            toolbarHeight: 75,
            centerTitle: true,
            title: const Text(
              "Card",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.orangeAccent,
                      size: 19,
                    )),
              )
            ],
          ),
          body: Column(
            children: [
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Items (20)",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          extentRatio: 0.17,
                          children: [
                            SlidableAction(
                              onPressed: ((context) {
                                print("object");
                              }),
                              icon: FontAwesomeIcons.trash,
                              foregroundColor: AppColor.white,
                              backgroundColor: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 3),
                          child: Costomoneproductcard(),
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
