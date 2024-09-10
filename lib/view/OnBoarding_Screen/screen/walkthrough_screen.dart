import 'package:flutter/material.dart';
import 'package:foodu_food_delivery_app_ui/constant/utils/App_assets.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../config/routes/app_router.dart';
import '../../../constant/utils/dimensions.dart';
import '../../../model/BoardingModel.dart';
import '../widget/onBoardingItem_widget.dart';

// ignore: must_be_immutable
class walkthrough_Screen extends StatelessWidget {
  walkthrough_Screen({Key? key}) : super(key: key);

  var boardingController = PageController();
  List<BoardingModel> boarding = [
    BoardingModel(
        image: AppLottieAssets.dinner_1,
        title: "Order for Food",
        body : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
    ),
    BoardingModel(
        image: AppLottieAssets.credit_card_2,
        title: "Easy Payment",
        body : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. sed do eiusmod tempor incididunt ut labore et dolore magna aliqua "
    ),
    BoardingModel(
        image: AppLottieAssets.onBoarding_delivery_3,
        title: "Fast Delivery",
        body : "Lorem ipsum dolor sit amet, consectetur adipiscing lit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
    ),
  ];
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: (){
              Get.offAllNamed(Routes.lets_you_in);
            },
            child:   Text("SKIP",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: AppDimensions.font20(context)
              ),
            ),)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: boardingController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    isLast = true;
                  } else {
                    isLast = false;
                  }
                },
                itemBuilder: (context, index) =>
                    onBoardingItem(  model: boarding[index],),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(height:AppDimensions.height30(context)),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardingController,
                  effect: ExpandingDotsEffect(
                      dotColor: Colors.grey.shade200,
                       activeDotColor: Colors.green,
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 4,
                      spacing: 5.0,
                  ),
                  count: boarding.length,
                ),
                const Spacer(),
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                   ),
                  onPressed: () {
                    if (isLast) {
                      Get.offAllNamed(Routes.lets_you_in);
                    } else {
                      boardingController.nextPage(
                          duration: const Duration(milliseconds: 750),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

void navigateAndFinish(
    context,
    widget,
    ) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
          (route) {
        return false;
      },
    );
