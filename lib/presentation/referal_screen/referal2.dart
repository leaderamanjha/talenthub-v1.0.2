import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class ReferalScreen extends StatelessWidget {
  const ReferalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 57.h,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgBack,
                    margin:
                        EdgeInsets.only(left: 30.h, top: 15.v, bottom: 11.v)),
                title: AppbarSubtitle5(
                    text: "Recommended Better Living",
                    margin: EdgeInsets.only(left: 1.h)),
                actions: [
                  AppbarSubtitle3(
                      text: "T&C",
                      margin: EdgeInsets.fromLTRB(29.h, 15.v, 29.h, 10.v),
                      onTap: () {
                        onTapTc(context);
                      })
                ],
                styleType: Style.bgFill),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Column(children: [
                    SizedBox(height: 7.v),
                    SizedBox(
                        height: 225.v,
                        width: 349.h,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 222.v,
                                  width: 341.h,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage1,
                                            height: 222.v,
                                            width: 341.h,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: 144.v,
                                                width: 282.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 10.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              width: 138.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          1.h),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "Recommended\n",
                                                                            style:
                                                                                theme.textTheme.titleLarge),
                                                                        TextSpan(
                                                                            text:
                                                                                "Better Living",
                                                                            style:
                                                                                CustomTextStyles.titleLarge22)
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: SizedBox(
                                                              width: 129.h,
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "Recommend us to your loved ones & \nearn upto ",
                                                                            style:
                                                                                CustomTextStyles.bodyMediumOnPrimary.copyWith(height: 1.43)),
                                                                        TextSpan(
                                                                            text:
                                                                                "₹2000",
                                                                            style:
                                                                                CustomTextStyles.titleSmallYellowA200),
                                                                        TextSpan(
                                                                            text:
                                                                                "")
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center))),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle63,
                                                          height: 79.v,
                                                          width: 90.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 72.h,
                                                                  bottom: 7.v)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle64,
                                                          height: 99.v,
                                                          width: 112.h,
                                                          alignment: Alignment
                                                              .bottomRight)
                                                    ])))
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1887x96,
                              height: 87.v,
                              width: 96.h,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 20.h, bottom: 2.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgGirlrunning,
                              height: 181.v,
                              width: 112.h,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 17.h, bottom: 11.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle62,
                              height: 75.v,
                              width: 89.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 44.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle182,
                              height: 81.v,
                              width: 96.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(right: 54.h)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4888x96,
                              height: 40.v,
                              width: 47.h,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 122.h, bottom: 13.v)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle481,
                              height: 54.v,
                              width: 63.h,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 89.h, bottom: 13.v))
                        ])),
                    SizedBox(height: 15.v),
                    SizedBox(
                        height: 182.v,
                        width: 358.h,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13.h, vertical: 11.v),
                                  decoration: AppDecoration.fillGray40001
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder13),
                                  child: Container(
                                      width: 325.h,
                                      margin: EdgeInsets.only(
                                          top: 60.v, right: 7.h),
                                      child: Text(
                                          "Members earned ₹30.05 Crore by introducing their friends and family to Orgaaa.",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.justify,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimaryContainer_1
                                              .copyWith(height: 1.50))))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 19.v),
                                  decoration: AppDecoration.outlineYellowA
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder13),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 33.h),
                                            child: Row(children: [
                                              SizedBox(
                                                  width: 44.h,
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "0\n",
                                                            style: CustomTextStyles
                                                                .titleSmallRed500),
                                                        TextSpan(
                                                            text: "Pending",
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimaryContainer11)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.center)),
                                              Container(
                                                  width: 59.h,
                                                  margin: EdgeInsets.only(
                                                      left: 59.h, bottom: 2.v),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "0\n",
                                                            style: CustomTextStyles
                                                                .titleSmallPrimarySemiBold),
                                                        TextSpan(
                                                            text: "Successful",
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimaryContainer11)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.center))
                                            ])),
                                        SizedBox(height: 5.v),
                                        Container(
                                            height: 6.v,
                                            width: 334.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.orange400,
                                                borderRadius:
                                                    BorderRadius.circular(3.h)),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(3.h),
                                                child: LinearProgressIndicator(
                                                    value: 0.96,
                                                    backgroundColor:
                                                        appTheme.orange400,
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            theme.colorScheme
                                                                .onPrimary)))),
                                        SizedBox(height: 9.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "₹",
                                                      style: CustomTextStyles
                                                          .bodySmallOnPrimaryContainer),
                                                  TextSpan(
                                                      text: "0/",
                                                      style: CustomTextStyles
                                                          .labelLargeOnPrimaryContainer),
                                                  TextSpan(
                                                      text: "₹2000",
                                                      style: CustomTextStyles
                                                          .bodySmallOnPrimaryContainer)
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])))
                        ])),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 28.h, top: 25.v, right: 61.h),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgGroup81,
                                  height: 114.v,
                                  width: 14.h,
                                  margin:
                                      EdgeInsets.only(top: 1.v, bottom: 3.v)),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Refer Your friends to orgaaa",
                                                style: CustomTextStyles
                                                    .labelLargeOnPrimaryContainer_2),
                                            SizedBox(height: 30.v),
                                            Text(
                                                "Friends do their first recharge",
                                                style: CustomTextStyles
                                                    .labelLargeOnPrimaryContainer_2),
                                            SizedBox(height: 28.v),
                                            Text(
                                                "Win up to Rs. 100 on every recomendation",
                                                style: CustomTextStyles
                                                    .labelLargeOnPrimaryContainer_2)
                                          ])))
                            ]))),
                    SizedBox(height: 42.v),
                    Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 21.h, vertical: 19.v),
                        decoration: AppDecoration.white.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL11),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "Your friends and family are ",
                                            style: CustomTextStyles
                                                .labelLargeOnPrimaryContainer_1),
                                        TextSpan(
                                            text: "waiting for an invite",
                                            style: CustomTextStyles
                                                .labelLargeRedA700)
                                      ]),
                                      textAlign: TextAlign.left)),
                              CustomElevatedButton(
                                  height: 51.v,
                                  text: "Refer Now",
                                  margin: EdgeInsets.only(
                                      top: 20.v, right: 72.h, bottom: 2.v),
                                  leftIcon: Container(
                                      margin: EdgeInsets.only(right: 6.h),
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgWhatsappLogo,
                                          height: 27.adaptSize,
                                          width: 27.adaptSize)),
                                  buttonTextStyle: CustomTextStyles
                                      .titleSmallOnPrimarySemiBold)
                            ]))
                  ])),
            )));
  }

  /// Navigates to the tCReferalScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the tCReferalScreen.
  onTapTc(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tCReferalScreen);
  }
}
