import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/cart_screen/cart_screen.dart';
import 'package:talenthub/presentation/lassi_screen/lassi_screen.dart';
import 'package:talenthub/presentation/milk_screen/milk_screen.dart';
import 'package:talenthub/presentation/product_screen/product_screen.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_1.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_2.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:http/http.dart' as http;
import 'package:talenthub/widgets/custom_elevated_button.dart';
import 'dart:convert';

import 'package:talenthub/widgets/custom_outlined_button.dart';

class CurdScreen extends StatelessWidget {
  Future<Map<String, dynamic>?> fetchData() async {
    final response = await http
        .get(Uri.parse('http://192.168.1.13:5000/api/product/getallproduct'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        appBar: CustomAppBar(
          height: 56.v,
          leadingWidth: 64.h,
          leading: AppbarImage1(
            imagePath: ImageConstant.imgKisspngemblem,
            margin: EdgeInsets.only(left: 25.h, top: 8.v, bottom: 8.v),
          ),
          actions: [
            AppbarImage2(
              imagePath: ImageConstant.imgFavorite,
              margin: EdgeInsets.only(left: 24.h, top: 18.v, right: 18.h),
            ),
            AppbarImage2(
              imagePath: ImageConstant.imgFastcart,
              margin: EdgeInsets.only(left: 13.h, top: 17.v, right: 42.h),
              onTap: () {
                onTapFastcartone(context);
              },
            ),
          ],
        ),
        body: FutureBuilder<Map<String, dynamic>?>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError || snapshot.data == null) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              final data = snapshot.data!;

              return SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBack32x32,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              onTap: () {
                                onTapImgBack(context);
                              },
                              margin: EdgeInsets.symmetric(vertical: 4.v),
                            ),
                            Container(
                              height: 50.v,
                              width: 185.h,
                              margin: EdgeInsets.only(left: 6.h),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Morning Delivery",
                                      style:
                                          CustomTextStyles.titleMediumBlack900,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Deliver on Wed, 18th October ",
                                      style: CustomTextStyles
                                          .labelLargeBluegray400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 3.v),

                      CustomImageView(
                        imagePath: data['image'] ?? '',
                        height: 88.v,
                        width: 96.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 84.h, top: 28.v),
                        onTap: () {
                          onTapImgImage(context);
                        },
                      ),
                      // ... more UI components using the fetched data
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: EdgeInsets.only(top: 11.v, right: 155.h),
                              child: Text(data['productname'] ?? '',
                                  style:
                                      CustomTextStyles.labelLargeBlack90012))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: EdgeInsets.only(top: 14.v, right: 10.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CustomElevatedButton(
                                        height: 22.v,
                                        width: 55.h,
                                        text: data['category'] ?? '',
                                        buttonStyle: CustomButtonStyles.none,
                                        decoration: CustomButtonStyles
                                            .gradientGreenAToYellowADecoration),
                                    SizedBox(height: 18.v),
                                    CustomElevatedButton(
                                        height: 35.v,
                                        width: 77.h,
                                        text: "Subscribe",
                                        buttonStyle:
                                            CustomButtonStyles.fillGreenA,
                                        buttonTextStyle: CustomTextStyles
                                            .labelMediumOnPrimary),
                                    SizedBox(height: 5.v),
                                    CustomOutlinedButton(
                                        width: 77.h, text: "ADD")
                                  ]))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(top: 29.v),
                              child: Text(data['quantity'] ?? '',
                                  style: theme.textTheme.labelMedium))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(right: 152.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 100.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(data['price'] ?? '',
                                              style: CustomTextStyles
                                                  .labelMediumBlack900),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text(data['price'] ?? '',
                                                  style: theme
                                                      .textTheme.labelMedium!
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough)))
                                        ]),
                                  ]))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              margin: EdgeInsets.only(top: 175.v, right: 35.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 2.v),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Text("Offer applicable on max 5 units ",
                                  style:
                                      CustomTextStyles.labelLargeBluegray400))),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              margin: EdgeInsets.only(left: 86.h, top: 13.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.h, vertical: 1.v),
                              decoration: AppDecoration.fillLimeA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4),
                              child: Text("30% OFF",
                                  style: CustomTextStyles.labelSmallBlack900))),
                      CustomElevatedButton(
                          height: 29.v,
                          width: 299.h,
                          text: "You are saving ₹20 (30% OFF)With VIP ",
                          margin: EdgeInsets.only(top: 137.v, right: 7.h),
                          rightIcon: Container(
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgKisspngemblem,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize)),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles.gradientWhiteToYellow,
                          buttonTextStyle: CustomTextStyles.labelLarge13,
                          alignment: Alignment.topRight),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 81.h),
                              child: SizedBox(
                                  height: 814.v,
                                  child: VerticalDivider(
                                      width: 1.h, thickness: 1.v)))),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                    height: 86.v,
                                    width: 85.h,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapColumnMilk(context);
                                        },
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text("Milk ",
                                                      style: CustomTextStyles
                                                          .labelMediumBlack900)),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: SizedBox(
                                                      height: 79.v,
                                                      width: 85.h,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapColumnMilk(
                                                                              context);
                                                                        },
                                                                        child: Container(
                                                                            height:
                                                                                52.adaptSize,
                                                                            width: 52.adaptSize,
                                                                            margin: EdgeInsets.only(top: 12.v),
                                                                            decoration: BoxDecoration(color: appTheme.blueGray100, borderRadius: BorderRadius.circular(26.h))))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: SizedBox(
                                                                    height:
                                                                        79.v,
                                                                    width: 85.h,
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.topRight,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgRectangle45,
                                                                              height: 79.v,
                                                                              width: 85.h,
                                                                              alignment: Alignment.center),
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
                                            ]))),
                                SizedBox(height: 12.v),
                                SizedBox(
                                    height: 77.v,
                                    width: 72.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapColumnMilk(context);
                                                  },
                                                  child: Container(
                                                      height: 52.adaptSize,
                                                      width: 52.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .blueGray100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      26.h))))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle46,
                                                        height: 55.v,
                                                        width: 60.h),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 1.v,
                                                                right: 20.h),
                                                        child: Text("Curd",
                                                            style: theme
                                                                .textTheme
                                                                .labelMedium))
                                                  ]))
                                        ])),
                                SizedBox(height: 14.v),
                                SizedBox(
                                    height: 61.v,
                                    width: 71.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height: 52.adaptSize,
                                                  width: 52.adaptSize,
                                                  margin:
                                                      EdgeInsets.only(top: 3.v),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.blueGray100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              26.h)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle47,
                                              height: 61.v,
                                              width: 71.h,
                                              alignment: Alignment.center,
                                              onTap: () {
                                                onTapImgImageseven(context);
                                              })
                                        ])),
                                SizedBox(height: 2.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtButtermilk(context);
                                    },
                                    child: Text("Buttermilk",
                                        style: theme.textTheme.labelMedium))
                              ])),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: EdgeInsets.only(top: 223.v),
                              child: SizedBox(width: 308.h, child: Divider()))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              width: 309.h, child: Divider(endIndent: 1.h))),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
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

onTapImgBack(BuildContext context) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) => MilkScreen(),
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

onTapColumnMilk(BuildContext context) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) => MilkScreen(),
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