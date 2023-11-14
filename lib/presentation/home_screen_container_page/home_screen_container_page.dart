import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_1.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_2.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class HomeScreenContainerPage extends StatelessWidget {
  const HomeScreenContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray20001,
            appBar: CustomAppBar(
                height: 56.v,
                leadingWidth: 56.h,
                leading: AppbarImage1(
                    imagePath: ImageConstant.imgKisspngemblem,
                    margin: EdgeInsets.only(left: 17.h, top: 8.v, bottom: 8.v)),
                actions: [
                  AppbarImage2(
                      imagePath: ImageConstant.imgWallet,
                      margin: EdgeInsets.fromLTRB(35.h, 16.v, 35.h, 18.v))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 8.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 16.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.h, vertical: 6.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        width: 179.h,
                                        margin: EdgeInsets.only(
                                            left: 3.h, bottom: 1.v),
                                        child: Text(
                                            "There is no order sheduled for tomorrow",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .labelLargeBlack90012)),
                                    CustomElevatedButton(
                                        height: 26.v,
                                        width: 112.h,
                                        text: "ADD ITEMS",
                                        margin: EdgeInsets.only(
                                            left: 40.h, top: 5.v, bottom: 5.v),
                                        buttonTextStyle: CustomTextStyles
                                            .labelLargeOnPrimarySemiBold)
                                  ])),
                          SizedBox(height: 36.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle35,
                              height: 111.v,
                              width: 365.h,
                              radius: BorderRadius.circular(20.h)),
                          SizedBox(height: 11.v),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 21.h, vertical: 11.v),
                              decoration: AppDecoration.outlineBlack,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(right: 19.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroup20648624,
                                              height: 34.adaptSize,
                                              width: 34.adaptSize),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8.h,
                                                  top: 13.v,
                                                  bottom: 11.v),
                                              child: Text(
                                                  "Place daily orders for fresh milk and groceries.",
                                                  style: CustomTextStyles
                                                      .labelLarge12))
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 16.v, right: 54.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroup20648634,
                                              height: 34.adaptSize,
                                              width: 34.adaptSize),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8.h,
                                                  top: 12.v,
                                                  bottom: 11.v),
                                              child: Text(
                                                  "Create a personalized subscription Plan.",
                                                  style: CustomTextStyles
                                                      .labelLarge12))
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 16.v, right: 13.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroup20648644,
                                              height: 29.adaptSize,
                                              width: 29.adaptSize),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8.h,
                                                  top: 12.v,
                                                  bottom: 11.v),
                                              child: Text(
                                                  "Activate the vacation mode to pause deliveries.",
                                                  style: CustomTextStyles
                                                      .labelLarge12))
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 16.v,
                                            right: 43.h,
                                            bottom: 4.v),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroup20877614,
                                              height: 33.v,
                                              width: 28.h),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8.h,
                                                  top: 13.v,
                                                  bottom: 10.v),
                                              child: Text(
                                                  "Seize thrilling deals for significant savings.",
                                                  style: CustomTextStyles
                                                      .labelLarge12))
                                        ]))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 21.h, top: 17.v),
                                  child: Text("Shop By Category",
                                      style: CustomTextStyles
                                          .titleSmallBluegray900))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 21.h, top: 8.v, right: 26.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse7,
                                          height: 79.adaptSize,
                                          width: 79.adaptSize,
                                          radius: BorderRadius.circular(39.h),
                                          onTap: () {
                                            onTapImgCircleimage(context);
                                          }),
                                      SizedBox(height: 2.v),
                                      Text("Milk",
                                          style: theme.textTheme.labelLarge)
                                    ]),
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 13.h),
                                            child: Column(children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse8,
                                                        height: 79.adaptSize,
                                                        width: 79.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(39.h),
                                                        onTap: () {
                                                          onTapImgCircleimageone(
                                                              context);
                                                        }),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse9,
                                                        height: 79.adaptSize,
                                                        width: 79.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(39.h),
                                                        margin: EdgeInsets.only(
                                                            left: 6.h),
                                                        onTap: () {
                                                          onTapImgCircleimagetwo(
                                                              context);
                                                        }),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse10,
                                                        height: 79.adaptSize,
                                                        width: 79.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(39.h),
                                                        margin: EdgeInsets.only(
                                                            left: 8.h))
                                                  ]),
                                              SizedBox(height: 2.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("Curd",
                                                        style: theme.textTheme
                                                            .labelLarge),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 53.h),
                                                        child: Text("Lassi",
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 48.h),
                                                        child: Text("Paneer",
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge))
                                                  ])
                                            ])))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 21.h, top: 11.v),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse11,
                                        height: 79.adaptSize,
                                        width: 79.adaptSize,
                                        radius: BorderRadius.circular(39.h)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse12,
                                        height: 79.adaptSize,
                                        width: 79.adaptSize,
                                        radius: BorderRadius.circular(39.h),
                                        margin: EdgeInsets.only(left: 13.h))
                                  ]))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 43.h, top: 3.v),
                                  child: Row(children: [
                                    Text("Ghee",
                                        style: theme.textTheme.labelLarge),
                                    Padding(
                                        padding: EdgeInsets.only(left: 54.h),
                                        child: Text("Butter",
                                            style: theme.textTheme.labelLarge))
                                  ]))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 21.h, top: 23.v, right: 32.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Most Popular Products",
                                        style: CustomTextStyles
                                            .titleSmallBluegray900),
                                    Spacer(),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 4.v),
                                        child: Text("View all",
                                            style: CustomTextStyles
                                                .bodySmallGreenA700)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgBack13x13,
                                        height: 13.adaptSize,
                                        width: 13.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 3.v, bottom: 6.v))
                                  ])),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(left: 8.h, top: 7.v),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Expanded(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 3,
                                              margin: EdgeInsets.all(0),
                                              color:
                                                  theme.colorScheme.onPrimary,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder27),
                                              child: Container(
                                                  height: 233.v,
                                                  width: 158.h,
                                                  decoration: AppDecoration
                                                      .fillOnPrimary
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder27),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 3,
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(0),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder27),
                                                                child:
                                                                    Container(
                                                                        height: 225
                                                                            .v,
                                                                        width: 158
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder27),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.bottomCenter,
                                                                            children: [
                                                                              Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 43.h, vertical: 2.v), decoration: AppDecoration.gradientBlueToLightBlue.copyWith(borderRadius: BorderRadiusStyle.roundedBorder27), child: Text("Hormone Free", style: CustomTextStyles.labelMediumBlack900))),
                                                                              Align(
                                                                                  alignment: Alignment.bottomCenter,
                                                                                  child: Container(
                                                                                      padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 24.v),
                                                                                      decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder27),
                                                                                      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgRectangle18, height: 86.v, width: 100.h, radius: BorderRadius.circular(27.h), alignment: Alignment.center),
                                                                                        SizedBox(height: 7.v),
                                                                                        Text("Curd Pouch", style: CustomTextStyles.labelLargeBlack90012),
                                                                                        Container(
                                                                                            width: 125.h,
                                                                                            margin: EdgeInsets.only(top: 3.v, right: 7.h),
                                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                Text("500g", style: CustomTextStyles.bodySmallLight),
                                                                                                SizedBox(height: 1.v),
                                                                                                Text("₹60", style: theme.textTheme.bodySmall),
                                                                                                Text("₹80", style: CustomTextStyles.bodySmallBluegray400)
                                                                                              ]),
                                                                                              Container(margin: EdgeInsets.only(top: 16.v, bottom: 3.v), padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v), decoration: AppDecoration.outlineGreenA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Text("ADD", style: CustomTextStyles.labelLargeOnPrimary12))
                                                                                            ]))
                                                                                      ])))
                                                                            ])))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                width: 158.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 207
                                                                            .v),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 49
                                                                            .h,
                                                                        vertical: 4
                                                                            .v),
                                                                decoration: AppDecoration
                                                                    .gradientGrayToAmberA
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderBL10),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(bottom: 2.v),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "₹50", style: CustomTextStyles.bodySmallPrimary),
                                                                                TextSpan(text: " with", style: CustomTextStyles.bodySmall10_1)
                                                                              ]),
                                                                              textAlign: TextAlign.left)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgKisspngemblem,
                                                                          height: 16
                                                                              .adaptSize,
                                                                          width: 16
                                                                              .adaptSize,
                                                                          margin:
                                                                              EdgeInsets.only(bottom: 2.v))
                                                                    ])))
                                                      ]))),
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 3,
                                              margin:
                                                  EdgeInsets.only(left: 29.h),
                                              color:
                                                  theme.colorScheme.onPrimary,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder27),
                                              child: Container(
                                                  height: 233.v,
                                                  width: 158.h,
                                                  decoration: AppDecoration
                                                      .fillOnPrimary
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder27),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 43
                                                                            .h,
                                                                        vertical: 2
                                                                            .v),
                                                                decoration: AppDecoration
                                                                    .gradientBlueToLightBlue
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder27),
                                                                child: Text(
                                                                    "Hormone Free",
                                                                    style: CustomTextStyles
                                                                        .labelMediumBlack900))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 13
                                                                            .h,
                                                                        vertical: 24
                                                                            .v),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder27),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgRectangle1886x100,
                                                                          height: 86
                                                                              .v,
                                                                          width: 100
                                                                              .h,
                                                                          radius: BorderRadius.circular(27
                                                                              .h),
                                                                          alignment:
                                                                              Alignment.center),
                                                                      SizedBox(
                                                                          height:
                                                                              7.v),
                                                                      Text(
                                                                          "Milk Full Fat",
                                                                          style:
                                                                              CustomTextStyles.labelLargeBlack90012),
                                                                      SizedBox(
                                                                          height:
                                                                              2.v),
                                                                      Row(
                                                                          children: [
                                                                            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                              Text("450ml", style: CustomTextStyles.bodySmallLight),
                                                                              SizedBox(height: 2.v),
                                                                              Text("₹60", style: theme.textTheme.bodySmall),
                                                                              Text("₹80", style: CustomTextStyles.bodySmallBluegray400)
                                                                            ]),
                                                                            Container(
                                                                                margin: EdgeInsets.only(left: 45.h, top: 17.v, bottom: 3.v),
                                                                                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v),
                                                                                decoration: AppDecoration.outlineGreenA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                                                                                child: Text("ADD", style: CustomTextStyles.labelLargeOnPrimary12))
                                                                          ])
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 207
                                                                            .v),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 49
                                                                            .h,
                                                                        vertical: 4
                                                                            .v),
                                                                decoration: AppDecoration
                                                                    .gradientGrayToAmberA
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderBL10),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets.only(bottom: 2.v),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "₹50", style: CustomTextStyles.bodySmallPrimary),
                                                                                TextSpan(text: " with", style: CustomTextStyles.bodySmall10_1)
                                                                              ]),
                                                                              textAlign: TextAlign.left)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgKisspngemblem,
                                                                          height: 16
                                                                              .adaptSize,
                                                                          width: 16
                                                                              .adaptSize,
                                                                          margin: EdgeInsets.only(
                                                                              left: 1.h,
                                                                              bottom: 2.v))
                                                                    ])))
                                                      ])))
                                        ])),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 3,
                                        margin: EdgeInsets.only(
                                            left: 26.h, top: 2.v),
                                        color: theme.colorScheme.onPrimary,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder27),
                                        child: Container(
                                            height: 233.v,
                                            width: 158.h,
                                            decoration: AppDecoration
                                                .fillOnPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder27),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      42.h),
                                                          decoration: AppDecoration
                                                              .gradientBlueToLightBlue
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder27),
                                                          child: Text(
                                                              "Hormone Free",
                                                              style: CustomTextStyles
                                                                  .labelMediumBlack900))),
                                                  Align(
                                                      alignment: Alignment
                                                          .center,
                                                      child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      13.h,
                                                                  vertical:
                                                                      21.v),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder27),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        5.v),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle181,
                                                                    height:
                                                                        86.v,
                                                                    width:
                                                                        100.h,
                                                                    radius: BorderRadius
                                                                        .circular(27
                                                                            .h),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                SizedBox(
                                                                    height:
                                                                        8.v),
                                                                Text(
                                                                    "Milk Medium Fat",
                                                                    style: CustomTextStyles
                                                                        .labelLargeBlack90012),
                                                                Row(children: [
                                                                  Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        SizedBox(
                                                                            width: 41
                                                                                .h,
                                                                            child: Text("450ml",
                                                                                maxLines: null,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                style: CustomTextStyles.bodySmallLight.copyWith(height: 2.00))),
                                                                        SizedBox(
                                                                            height:
                                                                                1.v),
                                                                        Text(
                                                                            "₹60",
                                                                            style:
                                                                                theme.textTheme.bodySmall),
                                                                        Text(
                                                                            "₹80",
                                                                            style:
                                                                                CustomTextStyles.bodySmallBluegray400)
                                                                      ]),
                                                                  Container(
                                                                      margin: EdgeInsets.only(
                                                                          left: 32
                                                                              .h,
                                                                          top: 19
                                                                              .v,
                                                                          bottom: 6
                                                                              .v),
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 4
                                                                              .h,
                                                                          vertical: 3
                                                                              .v),
                                                                      decoration: AppDecoration
                                                                          .outlineGreenA
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder4),
                                                                      child: Text(
                                                                          "ADD",
                                                                          style:
                                                                              CustomTextStyles.labelLargeOnPrimary12))
                                                                ])
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 207.v),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      49.h,
                                                                  vertical:
                                                                      3.v),
                                                          decoration: AppDecoration
                                                              .gradientGrayToAmberA
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .customBorderBL10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        bottom:
                                                                            2.v),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "₹50",
                                                                              style: CustomTextStyles.bodySmallPrimary),
                                                                          TextSpan(
                                                                              text: " with",
                                                                              style: CustomTextStyles.bodySmall10_1)
                                                                        ]),
                                                                        textAlign: TextAlign.left)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgKisspngemblem,
                                                                    height: 16
                                                                        .adaptSize,
                                                                    width: 16
                                                                        .adaptSize,
                                                                    margin: EdgeInsets.only(
                                                                        left:
                                                                            1.h,
                                                                        bottom:
                                                                            2.v))
                                                              ])))
                                                ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 3,
                                        margin: EdgeInsets.only(
                                            left: 29.h, top: 2.v),
                                        color: theme.colorScheme.onPrimary,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder27),
                                        child: Container(
                                            height: 233.v,
                                            width: 158.h,
                                            decoration: AppDecoration
                                                .fillOnPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder27),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          padding: EdgeInsets.symmetric(
                                                              horizontal: 42.h),
                                                          decoration: AppDecoration
                                                              .gradientBlueToLightBlue
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder27),
                                                          child: SizedBox(
                                                              width: 73.h,
                                                              child: Text(
                                                                  "Hormone Free",
                                                                  maxLines:
                                                                      null,
                                                                  overflow: TextOverflow
                                                                      .ellipsis,
                                                                  style: CustomTextStyles
                                                                      .labelMediumBlack900
                                                                      .copyWith(
                                                                          height: 1.80))))),
                                                  Align(
                                                      alignment: Alignment
                                                          .center,
                                                      child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      13.h,
                                                                  vertical:
                                                                      8.v),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder27),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle18103x100,
                                                                    height:
                                                                        103.v,
                                                                    width:
                                                                        100.h,
                                                                    radius: BorderRadius
                                                                        .circular(27
                                                                            .h),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                SizedBox(
                                                                    height:
                                                                        8.v),
                                                                Text(
                                                                    "Milk Bottle",
                                                                    style: CustomTextStyles
                                                                        .labelLargeBlack90012),
                                                                SizedBox(
                                                                    height:
                                                                        14.v),
                                                                Row(children: [
                                                                  Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        SizedBox(
                                                                            width: 41
                                                                                .h,
                                                                            child: Text("230ml",
                                                                                maxLines: null,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                style: CustomTextStyles.bodySmallLight.copyWith(height: 2.00))),
                                                                        SizedBox(
                                                                            height:
                                                                                1.v),
                                                                        Text(
                                                                            "₹60",
                                                                            style:
                                                                                theme.textTheme.bodySmall),
                                                                        Text(
                                                                            "₹80",
                                                                            style:
                                                                                CustomTextStyles.bodySmallBluegray400)
                                                                      ]),
                                                                  Container(
                                                                      margin: EdgeInsets.only(
                                                                          left: 32
                                                                              .h,
                                                                          top: 19
                                                                              .v,
                                                                          bottom: 6
                                                                              .v),
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 4
                                                                              .h,
                                                                          vertical: 3
                                                                              .v),
                                                                      decoration: AppDecoration
                                                                          .outlineGreenA
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder4),
                                                                      child: Text(
                                                                          "ADD",
                                                                          style:
                                                                              CustomTextStyles.labelLargeOnPrimary12))
                                                                ])
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 207.v),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      49.h,
                                                                  vertical:
                                                                      3.v),
                                                          decoration: AppDecoration
                                                              .gradientGrayToAmberA
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .customBorderBL10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        bottom:
                                                                            2.v),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "₹50",
                                                                              style: CustomTextStyles.bodySmallPrimary),
                                                                          TextSpan(
                                                                              text: " with",
                                                                              style: CustomTextStyles.bodySmall10_1)
                                                                        ]),
                                                                        textAlign: TextAlign.left)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgKisspngemblem,
                                                                    height: 16
                                                                        .adaptSize,
                                                                    width: 16
                                                                        .adaptSize,
                                                                    margin: EdgeInsets.only(
                                                                        left:
                                                                            1.h,
                                                                        bottom:
                                                                            2.v))
                                                              ])))
                                                ])))
                                  ])))
                        ]))))));
  }

  /// Navigates to the milkScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the milkScreen.
  onTapImgCircleimage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.milkScreen);
  }

  onTapImgCircleimageone(BuildContext context) {
    // TODO: implement Actions
  }

  onTapImgCircleimagetwo(BuildContext context) {
    // TODO: implement Actions
  }
}
