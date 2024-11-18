import 'package:flutter/material.dart';
import 'package:pro2flu/view/widgets/MainWidget/customimageprofile.dart';
import 'package:pro2flu/view/widgets/MainWidget/custommenu.dart';
import 'package:pro2flu/view/widgets/MainWidget/custommenufilter.dart';
import 'package:pro2flu/view/widgets/MainWidget/customtextfromfeild.dart';
import 'package:pro2flu/view/widgets/MainWidget/customtitle.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 40,
          ),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Custommenu(),
                  Customimageprofile(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Customtitle(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(child: Customtextfromfeild()),
                  SizedBox(
                    width: 10,
                  ),
                  Custommenufilter(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
