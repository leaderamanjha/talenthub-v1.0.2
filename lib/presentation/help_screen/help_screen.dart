import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/application_guide_screen/application_guide_screen.dart';
import 'package:talenthub/presentation/more_screen/more_screen.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_8.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_outlined_button.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 54.h,
          leading: AppbarImage(
            imagePath: ImageConstant.imgBack,
            onTap: () {
              onTapImgBack(context);
            },
            margin: EdgeInsets.only(
              left: 27.h,
              top: 15.v,
              bottom: 11.v,
            ),
          ),
          title: AppbarSubtitle5(
            text: "Need Help?",
            margin: EdgeInsets.only(left: 78.h),
          ),
          actions: [
            AppbarSubtitle8(
              text: "FAQ’s",
              margin: EdgeInsets.fromLTRB(33.h, 18.v, 33.h, 13.v),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 14.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Recent Orders",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 1.h,
                    top: 7.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 87.h,
                    vertical: 44.v,
                  ),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder13,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.v),
                      CustomImageView(
                        margin: EdgeInsets.only(right: 40),
                        imagePath: ImageConstant.imgRobotassistant,
                        height: 110.v,
                        width: 89.h,
                      ),
                      SizedBox(height: 21.v),
                      Text(
                        "No Order Found in Last 7 Days",
                        style: CustomTextStyles.bodySmallOnPrimaryContainer_1,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 1.h,
                    vertical: 14.v,
                  ),
                  decoration: AppDecoration.outlineBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder13,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          right: 11.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 37.v,
                              width: 250.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text(
                                        "Payments and cashback ",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 20.v),
                                      child: Text(
                                        "Cashback, payment and referral related issue",
                                        style: CustomTextStyles.labelMedium11,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgForward,
                              height: 21.adaptSize,
                              width: 21.adaptSize,
                              margin: EdgeInsets.only(
                                left: 48.h,
                                top: 7.v,
                                bottom: 9.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 11.v,
                          right: 11.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 39.v,
                              width: 290.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                        "Membership",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 20.v),
                                      child: Text(
                                        "View your membership details and renew your plan",
                                        style: CustomTextStyles.labelMedium11,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgForward,
                              height: 21.adaptSize,
                              width: 21.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 9.v),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 11.v,
                          right: 11.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 39.v,
                              width: 178.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                        "Profile and Address",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 20.v),
                                      child: Text(
                                        "Update your profile information",
                                        style: CustomTextStyles.labelMedium11,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgForward,
                              height: 21.adaptSize,
                              width: 21.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 9.v),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.h, 11.v, 11.h, 3.v),
                        child: GestureDetector(
                          onTap: () {
                            onTapRowProfile(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 38.v,
                                width: 90.h,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "App Guide",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 20.v),
                                        child: Text(
                                          "Troubleshooting",
                                          style: CustomTextStyles.labelMedium11,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgForward,
                                height: 21.adaptSize,
                                width: 21.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 7.v,
                                  bottom: 9.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 27.v,
                  ),
                  child: Text(
                    "VIP Support",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12.v,
                    right: 7.h,
                    bottom: 5.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomOutlinedButton(
                          height: 47.v,
                          text: "Call Us",
                          margin: EdgeInsets.only(right: 6.h),
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 6.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPhone,
                              height: 27.v,
                              width: 32.h,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.outlineBlueGrayTL8,
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                        ),
                      ),
                      Expanded(
                        child: CustomOutlinedButton(
                          height: 47.v,
                          text: "Mail Us",
                          margin: EdgeInsets.only(left: 6.h),
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 6.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgMail,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.outlineBlueGrayTL8,
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
        pageBuilder: (context, animation1, animation2) => MoreScreen(),
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

  onTapRowProfile(BuildContext context) {
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
}
