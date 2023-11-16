import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/application_guide_screen/application_guide_screen.dart';
import 'package:talenthub/presentation/milk_screen/milk_screen.dart';
import 'package:talenthub/presentation/subscription_screen/subscription_screen.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class PlaceAnOrderScreen extends StatelessWidget {
  const PlaceAnOrderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 48.h,
          leading: AppbarImage(
            imagePath: ImageConstant.imgBack,
            onTap: () {
              onTapImgBack(context);
            },
            margin: EdgeInsets.only(
              left: 21.h,
              top: 15.v,
              bottom: 11.v,
            ),
          ),
          title: AppbarSubtitle1(
            text: "Application Guide",
            margin: EdgeInsets.only(left: 7.h),
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 17.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 26.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 274.h,
                    margin: EdgeInsets.only(right: 65.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Single day order\n",
                            style: CustomTextStyles.titleSmallBluegray40014,
                          ),
                          TextSpan(
                            text: "",
                            style: CustomTextStyles.titleSmall14.copyWith(
                              height: 1.29,
                            ),
                          ),
                          TextSpan(
                            text:
                                "● Click on a specific date on calendar \n● Add quantity for desired product(s) \n● Click on update and your delivery is \n    scheduled",
                            style: CustomTextStyles.titleSmall14.copyWith(
                              height: 1.68,
                            ),
                          ),
                          TextSpan(
                            text: "",
                            style: CustomTextStyles.titleSmall14,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 32.h,
                        top: 20.v,
                        right: 32.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.green.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          onTapOrderPlace(context);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3.v),
                            Text(
                              "Place an order for next day? ",
                              style: CustomTextStyles.titleMediumOnPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 31.v),
                  SizedBox(
                    width: 339.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Subscription\n\n",
                            style: CustomTextStyles.titleSmallBluegray40014,
                          ),
                          TextSpan(
                            text:
                                "● Click on menu \n● Go to milk plan (Subscriptions)\n● Select the desired product \n● Select the quantity and the frequency (Daily/ \n    Alternate Days/Specify days)\n● Select the duration (it is optional) \n● Click on Done and your delivery will be \n    scheduled accordingly ",
                            style: CustomTextStyles.titleSmall14.copyWith(
                              height: 1.64,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  CustomElevatedButton(
                    text: "Add Subscription?",
                    onTap: () {
                      onTapSubscription(context);
                    },
                    margin: EdgeInsets.only(
                      left: 33.h,
                      top: 16.v,
                      right: 31.h,
                    ),
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                    alignment: Alignment.center,
                  ),
                  Container(
                    width: 324.h,
                    margin: EdgeInsets.only(
                      top: 32.v,
                      right: 15.h,
                    ),
                    child: Text(
                      "Note\n\n● To ensure your delivery , we suggest to \n    place / update order before 8:00 PM\n● Kindly mark your location appropriately for \n    uninterrupted deliveries\n● You can check the upcoming order on the \n    calendar (home) screen which will be \n    marked blue",
                      maxLines: 9,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmall14_1.copyWith(
                        height: 1.64,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapImgBack(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) =>
            ApplicationGuideScreen(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = Offset(-1.0, 0.0);
          const end = Offset.zero;

          const curve = Curves.easeInOut;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation1.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 300),
      ),
    );
  }

  onTapOrderPlace(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => MilkScreen(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation1.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 300),
      ),
    );
  }

  onTapSubscription(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => SubscriptionScreen(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation1.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 300),
      ),
    );
  }
}
