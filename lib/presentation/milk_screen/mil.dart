// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/cart_screen/cart_screen.dart';
import 'package:talenthub/presentation/curd/curd_screen.dart';
import 'package:talenthub/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:talenthub/presentation/lassi_screen/lassi_screen.dart';
import 'package:talenthub/presentation/milk_screen/milkdata.dart';
import 'package:talenthub/presentation/product_screen/product1.dart';
import 'package:talenthub/presentation/product_screen/product2.dart';
import 'package:talenthub/presentation/product_screen/product3.dart';
import 'package:talenthub/presentation/product_screen/product_screen.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_1.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_2.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
import 'package:talenthub/widgets/custom_outlined_button.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class LassiScreen extends StatelessWidget {
  const LassiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return FutureBuilder<List<MilkData>>(
      future: _loadMilkData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(child: Text('Error loading data'));
          }

          final List<MilkData> milkItems = snapshot.data!;

          mediaQueryData = MediaQuery.of(context);

          return SafeArea(
              child: Scaffold(
                  backgroundColor: theme.colorScheme.onPrimary,
                  appBar: CustomAppBar(
                      height: 56.v,
                      leadingWidth: 64.h,
                      leading: AppbarImage1(
                          imagePath: ImageConstant.imgKisspngemblem,
                          margin: EdgeInsets.only(
                              left: 25.h, top: 8.v, bottom: 8.v)),
                      actions: [
                        AppbarImage2(
                            imagePath: ImageConstant.imgFavorite,
                            margin: EdgeInsets.only(
                                left: 24.h, top: 18.v, right: 18.h)),
                        AppbarImage2(
                            imagePath: ImageConstant.imgFastcart,
                            margin: EdgeInsets.only(
                                left: 13.h, top: 17.v, right: 42.h),
                            onTap: () {
                              onTapFastcartone(context);
                            })
                      ]),
                  body: SizedBox(
                      width: mediaQueryData.size.width,
                      child: SingleChildScrollView(
                          padding: EdgeInsets.only(top: 7.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgBack32x32,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          onTap: () {
                                            onTapImgBack(context);
                                          },
                                          margin: EdgeInsets.symmetric(
                                              vertical: 4.v)),
                                      Container(
                                          height: 50.v,
                                          width: 185.h,
                                          margin: EdgeInsets.only(left: 6.h),
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                        "Morning Delivery",
                                                        style: CustomTextStyles
                                                            .titleMediumBlack900)),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Text(
                                                        "Deliver on Wed, 18th October ",
                                                        style: CustomTextStyles
                                                            .labelLargeBluegray400))
                                              ]))
                                    ])),
                                SizedBox(height: 3.v),
                                for (var milkitem in milkItems)
                                  SizedBox(
                                      height: 824.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath: milkitem.imagePath,
                                                height: 88.v,
                                                width: 96.h,
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.only(
                                                    left: 84.h, top: 28.v),
                                                onTap: () {
                                                  onTapImgImage(context);
                                                }),
                                            CustomImageView(
                                                imagePath: milkitem.imagePath1,
                                                height: 88.v,
                                                width: 96.h,
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.only(
                                                    left: 83.h, top: 266.v),
                                                onTap: () {
                                                  onTapImgImage1(context);
                                                }),
                                            CustomImageView(
                                                imagePath: milkitem.imagePath2,
                                                height: 88.v,
                                                width: 96.h,
                                                alignment: Alignment.bottomLeft,
                                                margin: EdgeInsets.only(
                                                    left: 83.h, bottom: 268.v),
                                                onTap: () {
                                                  onTapImgImage2(context);
                                                }),
                                            CustomImageView(
                                                imagePath: milkitem.imagePath3,
                                                height: 88.v,
                                                width: 96.h,
                                                alignment: Alignment.bottomLeft,
                                                margin: EdgeInsets.only(
                                                    left: 83.h, bottom: 66.v),
                                                onTap: () {
                                                  onTapImgImage3(context);
                                                }),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 11.v,
                                                        right: 117.h),
                                                    child: Text(milkitem.title,
                                                        style: CustomTextStyles
                                                            .labelLargeBlack90012))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 249.v,
                                                        right: 148.h),
                                                    child: Text(milkitem.title1,
                                                        style: CustomTextStyles
                                                            .labelLargeBlack90012))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 145.h,
                                                        bottom: 354.v),
                                                    child: Text(milkitem.title2,
                                                        style: CustomTextStyles
                                                            .labelLargeBlack90012))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 152.v),
                                                    child: Text(milkitem.title3,
                                                        style: CustomTextStyles
                                                            .labelLargeBlack90012))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 249.v,
                                                        right: 10.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          CustomElevatedButton(
                                                              height: 22.v,
                                                              width: 55.h,
                                                              text: milkitem
                                                                  .subtitle,
                                                              buttonStyle:
                                                                  CustomButtonStyles
                                                                      .none,
                                                              decoration:
                                                                  CustomButtonStyles
                                                                      .gradientGreenAToYellowADecoration),
                                                          SizedBox(
                                                              height: 18.v),
                                                          CustomElevatedButton(
                                                              height: 35.v,
                                                              width: 77.h,
                                                              text: milkitem
                                                                  .subscribeText,
                                                              buttonStyle:
                                                                  CustomButtonStyles
                                                                      .fillGreenA,
                                                              buttonTextStyle:
                                                                  CustomTextStyles
                                                                      .labelMediumOnPrimary),
                                                          SizedBox(height: 5.v),
                                                          CustomOutlinedButton(
                                                              width: 77.h,
                                                              text: milkitem
                                                                  .addText)
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 10.h,
                                                        bottom: 258.v),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          CustomElevatedButton(
                                                              height: 22.v,
                                                              width: 55.h,
                                                              text: milkitem
                                                                  .subtitle,
                                                              buttonStyle:
                                                                  CustomButtonStyles
                                                                      .none,
                                                              decoration:
                                                                  CustomButtonStyles
                                                                      .gradientGreenAToYellowADecoration),
                                                          SizedBox(
                                                              height: 18.v),
                                                          CustomElevatedButton(
                                                              height: 35.v,
                                                              width: 77.h,
                                                              text: milkitem
                                                                  .subscribeText,
                                                              buttonStyle:
                                                                  CustomButtonStyles
                                                                      .fillGreenA,
                                                              buttonTextStyle:
                                                                  CustomTextStyles
                                                                      .labelMediumOnPrimary),
                                                          SizedBox(height: 5.v),
                                                          CustomOutlinedButton(
                                                              width: 77.h,
                                                              text: milkitem
                                                                  .addText)
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 10.h,
                                                        bottom: 56.v),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          CustomElevatedButton(
                                                              height: 22.v,
                                                              width: 55.h,
                                                              text: milkitem
                                                                  .subtitle,
                                                              buttonStyle:
                                                                  CustomButtonStyles
                                                                      .none,
                                                              decoration:
                                                                  CustomButtonStyles
                                                                      .gradientGreenAToYellowADecoration),
                                                          SizedBox(
                                                              height: 18.v),
                                                          CustomElevatedButton(
                                                              height: 35.v,
                                                              width: 77.h,
                                                              text: milkitem
                                                                  .subscribeText,
                                                              buttonStyle:
                                                                  CustomButtonStyles
                                                                      .fillGreenA,
                                                              buttonTextStyle:
                                                                  CustomTextStyles
                                                                      .labelMediumOnPrimary),
                                                          SizedBox(height: 5.v),
                                                          CustomOutlinedButton(
                                                              width: 77.h,
                                                              text: milkitem
                                                                  .addText)
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 29.v),
                                                    child: Text(
                                                        milkitem.quantity,
                                                        style: theme.textTheme
                                                            .labelMedium))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 268.v),
                                                    child: Text(
                                                        milkitem.quantity,
                                                        style: theme.textTheme
                                                            .labelMedium))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 338.v),
                                                    child: Text(
                                                        milkitem.quantity,
                                                        style: theme.textTheme
                                                            .labelMedium))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 136.v),
                                                    child: Text(
                                                        milkitem.quantity,
                                                        style: theme.textTheme
                                                            .labelMedium))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 11.v, right: 9.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          CustomElevatedButton(
                                                              height: 22.v,
                                                              width: 55.h,
                                                              text: milkitem
                                                                  .subtitle,
                                                              buttonStyle:
                                                                  CustomButtonStyles
                                                                      .none,
                                                              decoration:
                                                                  CustomButtonStyles
                                                                      .gradientGreenAToYellowADecoration),
                                                          SizedBox(
                                                              height: 18.v),
                                                          CustomElevatedButton(
                                                              height: 35.v,
                                                              width: 77.h,
                                                              text: milkitem
                                                                  .subscribeText,
                                                              buttonStyle:
                                                                  CustomButtonStyles
                                                                      .fillGreenA,
                                                              buttonTextStyle:
                                                                  CustomTextStyles
                                                                      .labelMediumOnPrimary),
                                                          SizedBox(height: 5.v),
                                                          CustomOutlinedButton(
                                                              width: 77.h,
                                                              text: milkitem
                                                                  .addText)
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 152.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    milkitem
                                                                        .price,
                                                                    style: CustomTextStyles
                                                                        .labelMediumBlack900),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 16
                                                                            .h),
                                                                    child: Text(
                                                                        milkitem
                                                                            .originalPrice,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelMedium!
                                                                            .copyWith(decoration: TextDecoration.lineThrough)))
                                                              ]),
                                                          SizedBox(
                                                              height: 222.v),
                                                          Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    milkitem
                                                                        .price1,
                                                                    style: CustomTextStyles
                                                                        .labelMediumBlack900),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 16
                                                                            .h),
                                                                    child: Text(
                                                                        milkitem
                                                                            .originalPrice1,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelMedium!
                                                                            .copyWith(decoration: TextDecoration.lineThrough)))
                                                              ]),
                                                          SizedBox(
                                                              height: 185.v),
                                                          Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    milkitem
                                                                        .price2,
                                                                    style: CustomTextStyles
                                                                        .labelMediumBlack900),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 16
                                                                            .h),
                                                                    child: Text(
                                                                        milkitem
                                                                            .originalPrice2,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelMedium!
                                                                            .copyWith(decoration: TextDecoration.lineThrough)))
                                                              ]),
                                                          SizedBox(
                                                              height: 185.v),
                                                          Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    milkitem
                                                                        .price3,
                                                                    style: CustomTextStyles
                                                                        .labelMediumBlack900),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 16
                                                                            .h),
                                                                    child: Text(
                                                                        milkitem
                                                                            .originalPrice3,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelMedium!
                                                                            .copyWith(decoration: TextDecoration.lineThrough)))
                                                              ])
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        top: 175.v,
                                                        right: 35.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 30.h,
                                                            vertical: 2.v),
                                                    decoration: AppDecoration
                                                        .fillBlueGray
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Text(
                                                        "Offer applicable on max 5 units ",
                                                        style: CustomTextStyles
                                                            .labelLargeBluegray400))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 86.h, top: 13.v),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.h,
                                                            vertical: 1.v),
                                                    decoration: AppDecoration
                                                        .fillLimeA
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder4),
                                                    child: Text(
                                                        milkitem.discount,
                                                        style: CustomTextStyles
                                                            .labelSmallBlack900))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 85.h, top: 251.v),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.h,
                                                            vertical: 1.v),
                                                    decoration: AppDecoration
                                                        .fillLimeA
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder4),
                                                    child: Text(
                                                        milkitem.discount,
                                                        style: CustomTextStyles
                                                            .labelSmallBlack900))),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 85.h,
                                                        bottom: 353.v),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.h,
                                                            vertical: 1.v),
                                                    decoration: AppDecoration
                                                        .fillLimeA
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder4),
                                                    child: Text(
                                                        milkitem.discount,
                                                        style: CustomTextStyles
                                                            .labelSmallBlack900))),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 85.h,
                                                        bottom: 151.v),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.h,
                                                            vertical: 1.v),
                                                    decoration: AppDecoration
                                                        .fillLimeA
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder4),
                                                    child: Text(
                                                        milkitem.discount,
                                                        style: CustomTextStyles
                                                            .labelSmallBlack900))),
                                            CustomElevatedButton(
                                                height: 29.v,
                                                width: 299.h,
                                                text: milkitem.savingText,
                                                margin: EdgeInsets.only(
                                                    top: 137.v, right: 7.h),
                                                rightIcon: Container(
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgKisspngemblem,
                                                        height: 16.adaptSize,
                                                        width: 16.adaptSize)),
                                                buttonStyle:
                                                    CustomButtonStyles.none,
                                                decoration: CustomButtonStyles
                                                    .gradientWhiteToYellow,
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .labelLarge13,
                                                alignment: Alignment.topRight),
                                            CustomElevatedButton(
                                                height: 29.v,
                                                width: 299.h,
                                                text: "milkitem.savingText ",
                                                margin: EdgeInsets.only(
                                                    top: 375.v, right: 8.h),
                                                rightIcon: Container(
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgKisspngemblem,
                                                        height: 16.adaptSize,
                                                        width: 16.adaptSize)),
                                                buttonStyle:
                                                    CustomButtonStyles.none,
                                                decoration: CustomButtonStyles
                                                    .gradientWhiteToYellow,
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .labelLarge13,
                                                alignment: Alignment.topRight),
                                            CustomElevatedButton(
                                                height: 29.v,
                                                width: 299.h,
                                                text: milkitem.savingText,
                                                margin: EdgeInsets.only(
                                                    right: 8.h, bottom: 218.v),
                                                rightIcon: Container(
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgKisspngemblem,
                                                        height: 16.adaptSize,
                                                        width: 16.adaptSize)),
                                                buttonStyle:
                                                    CustomButtonStyles.none,
                                                decoration: CustomButtonStyles
                                                    .gradientWhiteToYellow,
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .labelLarge13,
                                                alignment:
                                                    Alignment.bottomRight),
                                            CustomElevatedButton(
                                                height: 29.v,
                                                width: 299.h,
                                                text: milkitem.savingText,
                                                margin: EdgeInsets.only(
                                                    right: 8.h, bottom: 16.v),
                                                rightIcon: Container(
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgKisspngemblem,
                                                        height: 16.adaptSize,
                                                        width: 16.adaptSize)),
                                                buttonStyle:
                                                    CustomButtonStyles.none,
                                                decoration: CustomButtonStyles
                                                    .gradientWhiteToYellow,
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .labelLarge13,
                                                alignment:
                                                    Alignment.bottomRight),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 81.h),
                                                    child: SizedBox(
                                                        height: 814.v,
                                                        child: VerticalDivider(
                                                            width: 1.h,
                                                            thickness: 1.v)))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(
                                                          height: 86.v,
                                                          width: 85.h,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Text(
                                                                        "Milk ",
                                                                        style: CustomTextStyles
                                                                            .labelMediumBlack900)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: SizedBox(
                                                                        height: 79.v,
                                                                        width: 85.h,
                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                          Align(
                                                                              alignment: Alignment.topCenter,
                                                                              child: Container(height: 52.adaptSize, width: 52.adaptSize, margin: EdgeInsets.only(top: 12.v), decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(26.h)))),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: SizedBox(
                                                                                  height: 79.v,
                                                                                  width: 85.h,
                                                                                  child: Stack(alignment: Alignment.topRight, children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgRectangle45, height: 79.v, width: 85.h, alignment: Alignment.center),
                                                                                    Align(
                                                                                        alignment: Alignment.topRight,
                                                                                        child: Padding(
                                                                                            padding: EdgeInsets.only(top: 4.v, right: 4.h),
                                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
                                                                                              CustomImageView(imagePath: ImageConstant.imgRectangle44, height: 61.v, width: 40.h),
                                                                                              Padding(padding: EdgeInsets.only(left: 7.h), child: SizedBox(height: 61.v, child: VerticalDivider(width: 4.h, thickness: 4.v, color: appTheme.greenA700, indent: 12.h, endIndent: 5.h)))
                                                                                            ])))
                                                                                  ])))
                                                                        ])))
                                                              ])),
                                                      SizedBox(height: 12.v),
                                                      SizedBox(
                                                          height: 77.v,
                                                          width: 72.h,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Container(
                                                                        height: 52
                                                                            .adaptSize,
                                                                        width: 52
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            top: 3
                                                                                .v),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.blueGray100,
                                                                            borderRadius: BorderRadius.circular(26.h)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: GestureDetector(
                                                                        onTap: () {
                                                                          onTapColumncurd(
                                                                              context);
                                                                        },
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgRectangle46,
                                                                              height: 55.v,
                                                                              width: 60.h),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(top: 1.v, right: 20.h),
                                                                              child: Text("Curd", style: theme.textTheme.labelMedium))
                                                                        ])))
                                                              ])),
                                                      SizedBox(height: 14.v),
                                                      SizedBox(
                                                          height: 61.v,
                                                          width: 71.h,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Container(
                                                                        height: 52
                                                                            .adaptSize,
                                                                        width: 52
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            top: 3
                                                                                .v),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.blueGray100,
                                                                            borderRadius: BorderRadius.circular(26.h)))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgRectangle47,
                                                                    height:
                                                                        61.v,
                                                                    width: 71.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    onTap: () {
                                                                      onTapImgImageseven(
                                                                          context);
                                                                    })
                                                              ])),
                                                      SizedBox(height: 2.v),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtButtermilk(
                                                                context);
                                                          },
                                                          child: Text(
                                                              "Buttermilk",
                                                              style: theme
                                                                  .textTheme
                                                                  .labelMedium))
                                                    ])),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 223.v),
                                                    child: SizedBox(
                                                        width: 308.h,
                                                        child: Divider()))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: SizedBox(
                                                    width: 309.h,
                                                    child: Divider(
                                                        endIndent: 1.h))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 199.v),
                                                    child: SizedBox(
                                                        width: 309.h,
                                                        child: Divider(
                                                            endIndent: 1.h)))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                    height: 20.v,
                                                    width: 113.h,
                                                    margin: EdgeInsets.only(
                                                        right: 117.h,
                                                        bottom: 48.v),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topRight,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgSearch,
                                                              height:
                                                                  17.adaptSize,
                                                              width:
                                                                  17.adaptSize),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          right: 21
                                                                              .h),
                                                                  child: Text(
                                                                      "Search",
                                                                      style: CustomTextStyles
                                                                          .bodyMediumOnPrimary_1)))
                                                        ])))
                                          ]))
                              ])))));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  onTapFastcartone(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => CartScreen(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = Offset(0.0, -1.0);
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

  onTapImgImage(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => ProductScreen(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = 0.0;
          const end = 1.0;
          var tween = Tween(begin: begin, end: end);
          var opacityAnimation = animation1.drive(tween);
          return ScaleTransition(
            scale: opacityAnimation,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 110),
      ),
    );
  }

  onTapImgImage1(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => Product1(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = 0.0;
          const end = 1.0;
          var tween = Tween(begin: begin, end: end);
          var opacityAnimation = animation1.drive(tween);
          return ScaleTransition(
            scale: opacityAnimation,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 110),
      ),
    );
  }

  onTapImgImage2(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => Product2(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = 0.0;
          const end = 1.0;
          var tween = Tween(begin: begin, end: end);
          var opacityAnimation = animation1.drive(tween);
          return ScaleTransition(
            scale: opacityAnimation,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 110),
      ),
    );
  }

  onTapImgImage3(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => Product3(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = 0.0;
          const end = 1.0;
          var tween = Tween(begin: begin, end: end);
          var opacityAnimation = animation1.drive(tween);
          return ScaleTransition(
            scale: opacityAnimation,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 110),
      ),
    );
  }

  onTapImgBack(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) =>
            HomeScreenContainerPage(),
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

  onTapColumncurd(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => CurdScreen(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = Offset(-1.0, 0.0); // Changed the initial offset
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          var offsetAnimation = animation1.drive(tween);

          // Use ScaleTransition for horizontal flip
          return ScaleTransition(
            scale: Tween<double>(begin: -1.0, end: 1.0).animate(animation1),
            alignment: Alignment.center,
            child: SlideTransition(
              position: offsetAnimation,
              child: child,
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
      ),
    );
  }

  onTapImgImageseven(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => LassiScreen(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = Offset(-1.0, 0.0); // Changed the initial offset
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          var offsetAnimation = animation1.drive(tween);

          // Use ScaleTransition for horizontal flip
          return ScaleTransition(
            scale: Tween<double>(begin: -1.0, end: 1.0).animate(animation1),
            alignment: Alignment.center,
            child: SlideTransition(
              position: offsetAnimation,
              child: child,
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
      ),
    );
  }

  onTapTxtButtermilk(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => LassiScreen(),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = Offset(-1.0, 0.0); // Changed the initial offset
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          var offsetAnimation = animation1.drive(tween);

          // Use ScaleTransition for horizontal flip
          return ScaleTransition(
            scale: Tween<double>(begin: -1.0, end: 1.0).animate(animation1),
            alignment: Alignment.center,
            child: SlideTransition(
              position: offsetAnimation,
              child: child,
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
      ),
    );
  }

  Future<List<MilkData>> _loadMilkData() async {
    final jsonString =
        await rootBundle.loadString('assets/json/milk_data.json');
    final List<dynamic> jsonData = json.decode(jsonString);

    return jsonData
        .map((item) => MilkData(
              title: item['title'],
              title1: item['title1'],
              title2: item['title2'],
              title3: item['title3'],
              subtitle: item['subtitle'],
              subscribeText: item['subscribeText'],
              addText: item['addText'],
              quantity: item['quantity'],
              price: item['price'],
              price1: item['price1'],
              price2: item['price2'],
              price3: item['price3'],
              originalPrice: item['originalPrice'],
              originalPrice1: item['originalPrice1'],
              originalPrice2: item['originalPrice2'],
              originalPrice3: item['originalPrice3'],
              discount: item['discount'],
              savingText: item['savingText'],
              imagePath: item['imagePath'],
              imagePath1: item['imagePath1'],
              imagePath2: item['imagePath2'],
              imagePath3: item['imagePath3'],
            ))
        .toList();
  }
}
