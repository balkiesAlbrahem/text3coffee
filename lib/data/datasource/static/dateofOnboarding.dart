import 'package:pro2flu/core/constants/linkimageasset.dart';
import 'package:pro2flu/data/models/onboardingModel.dart';

List<OnboardingModel> onBoardingList = [
  OnboardingModel(
    title: "Stay Focused",
    image: LinkImageAsset.onboardingimage1,
    body:
        "Get the cup filled of your choice to stay \n focused and awake. Diffrent type of coffee \n menu, hot lottee cappucino",
  ),
  OnboardingModel(
    title: "Stay Energized",
    image: LinkImageAsset.onboardingimage2,
    body:
        "Discover your perfect brew to keep you sharp\nand energized. Explore our menu with a variety\n of coffee options.",
  ),
];
 // TabBar(
      //                     tabs: taps
      //                         .map((text) => Tab(
      //                               child: Padding(
      //                                 padding: const EdgeInsets.only(left: 0),
      //                                 child: Text(
      //                                   text,
      //                                   // style: TextStyle(
      //                                   //   fontSize: 16,
      //                                   //   fontWeight: FontWeight.w600,
      //                                   // ),
      //                                 ),
      //                               ),
      //                             ))
      //                         .toList(),
      //                     indicator: BoxDecoration(
      //                       shape: BoxShape.circle, // يجعل النقطة دائرية
      //                       color: Colors.black, // لون النقطة
      //                     ),
      //                     indicatorSize:
      //                         TabBarIndicatorSize.label, // تطابق حجم النص
      //                     labelColor: Colors.black, // لون النص المفعل
      //                     unselectedLabelColor:
      //                         Colors.grey, // لون النص غير المفعل
      //                   ),
      //                   Expanded(
      //                     child: TabBarView(
      //                       children: taps
      //                           .map((text) => Center(
      //                                 child: Text(
      //                                   "صفحة $text",
      //                                   style: TextStyle(fontSize: 24),
      //                                 ),
      //                               ))
      //                           .toList(),
      //                     ),
      //                   ),
                     