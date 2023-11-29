import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/custom_checkbox_button.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class VipScreen extends StatelessWidget {
  VipScreen({Key? key}) : super(key: key);

  bool responseEnglish = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: appTheme.gray10002,
          body: SizedBox(
              width: double.maxFinite,
              child: Column(children: [
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 58.h, vertical: 12.v),
                    decoration: AppDecoration.gradientBlackToBlack.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL19),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                          height: 170.v,
                          width: 220.h,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGiftbox,
                                height: 127.adaptSize,
                                width: 127.adaptSize,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 14.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgBurgundygiftwith,
                                height: 150.v,
                                width: 128.h,
                                alignment: Alignment.topRight),
                            CustomImageView(
                                imagePath: ImageConstant.imgBigredgift,
                                height: 133.v,
                                width: 139.h,
                                alignment: Alignment.bottomCenter)
                          ])),
                      SizedBox(height: 35.v),
                      SizedBox(
                          width: 269.h,
                          child: Text("Welcome to our \nVIP club",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineLarge!
                                  .copyWith(height: 1.21)))
                    ])),
                Container(
                    width: 360.h,
                    margin: EdgeInsets.only(left: 15.h, top: 26.v, right: 15.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v),
                    decoration: AppDecoration.fillAmber.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder23),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgKisspngemblem,
                              height: 75.v,
                              width: 71.h,
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: 245.h,
                                  margin: EdgeInsets.only(
                                      left: 34.h, top: 14.v, right: 33.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Your trial ",
                                            style: CustomTextStyles
                                                .titleSmallSemiBold),
                                        TextSpan(
                                            text: "VIP Membership",
                                            style: CustomTextStyles
                                                .titleSmallPrimarySemiBold_1),
                                        TextSpan(
                                            text:
                                                " worth\n₹60 is unlocked for ",
                                            style: CustomTextStyles
                                                .titleSmallSemiBold
                                                .copyWith(height: 1.33)),
                                        TextSpan(
                                            text: "Free! \n",
                                            style: CustomTextStyles
                                                .titleSmallPrimarySemiBold_1)
                                      ]),
                                      textAlign: TextAlign.center))),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.v, horizontal: 70.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgDone,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                SizedBox(
                                    width: 8
                                        .h), // Add some spacing between the image and text
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 2.v, bottom: 3.v),
                                    child: Text(
                                      "40% OFF (from MRP) on all orders",
                                      style: CustomTextStyles
                                          .labelLargeBluegray90001,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgDone,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 8.h, top: 2.v, bottom: 3.v),
                                    child: Text("Total discount worth ₹250",
                                        style: CustomTextStyles
                                            .labelLargeBlack900SemiBold))
                              ]),
                          SizedBox(height: 12.v),
                          Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgDone,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 8.h, top: 3.v, bottom: 2.v),
                                child: Text("Valid for 15 Days",
                                    style: CustomTextStyles
                                        .labelLargeBluegray90001))
                          ]),
                          SizedBox(height: 7.v)
                        ])),
                SizedBox(height: 25.v),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder13),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomCheckboxButton(
                              text: "Count me in!",
                              value: responseEnglish,
                              margin: EdgeInsets.only(left: 6.h),
                              padding: EdgeInsets.symmetric(vertical: 1.v),
                              onChange: (value) {
                                responseEnglish = value;
                              }),
                          SizedBox(height: 9.v),
                          CustomElevatedButton(
                              height: 50.v,
                              text: "Activate Now",
                              buttonStyle: CustomButtonStyles.fillBlueGray,
                              buttonTextStyle:
                                  CustomTextStyles.titleLargePoppinsPrimary,
                              onTap: () {
                                onTapActivatenow(context);
                              })
                        ])),
                SizedBox(height: 10.v)
              ]))),
    );
  }

  /// Navigates to the homeScreenContainer1Screen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreenContainer1Screen.
  onTapActivatenow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainer1Screen);
  }
}
