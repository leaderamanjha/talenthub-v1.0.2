// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/cart_screen/cart_screen.dart';
import 'package:talenthub/presentation/curd/curdData.dart';
import 'package:talenthub/presentation/curd/curd_screen.dart';
import 'package:talenthub/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:talenthub/presentation/lassi_screen/lassi_screen.dart';
import 'package:talenthub/presentation/milk_screen/mil.dart';
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
// ignore: unnecessary_import
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class CurdScreen extends StatefulWidget {
  @override
  _CurdScreenState createState() => _CurdScreenState();
}

class _CurdScreenState extends State<CurdScreen> {
  late Future<List<Map<String, dynamic>>?> fetchData;
  List<Map<String, dynamic>> cart = [];

  @override
  void initState() {
    super.initState();
    fetchData = _fetchData();
  }

  Future<List<Map<String, dynamic>>?> _fetchData() async {
    final response = await http.post(
      Uri.parse('http://192.168.1.26:5000/api/product/getallproduct'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{'yourKey': 'yourValue'}),
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      List<dynamic> productList = json.decode(response.body)['data'];
      List<Map<String, dynamic>> productDataList =
          List<Map<String, dynamic>>.from(productList);

      return productDataList;
    } else {
      throw Exception('Failed to load data');
    }
  }
   void onAddToCart(Map<String, dynamic> productData) {
    bool isProductInCart =
        cart.any((item) => item['productId'] == productData['productId']);

    if (!isProductInCart) {
      setState(() {
        cart.add({
          'productId': productData['productId'],
          'productname': productData['productname'],
          'price': productData['price'],
          // Add any other relevant product information
        });
      });

      print('Product added to cart: ${productData['productname']}');
    } else {
      print('Product is already in the cart: ${productData['productname']}');
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    // http://192.168.1.13:5000/api/product/getallproduct

    return FutureBuilder<List<Map<String, dynamic>>?>(
      future: fetchData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError || snapshot.data == null) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          final List<Map<String, dynamic>> productList = snapshot.data!;
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
                                for (var productData in productList)
                                  SizedBox(
                                      height: 824.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle18,
                                                height: 88.v,
                                                width: 96.h,
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.only(
                                                    left: 84.h, top: 28.v),
                                                onTap: () {
                                                  onTapImgImage(context);
                                                }),
                                          
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 11.v,
                                                        right: 155.h),
                                                    child: Text(
                                                        productData[
                                                                "productname"] ??
                                                            "",
                                                        style: CustomTextStyles
                                                            .labelLargeBlack90012))),
              
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 14.v, right: 10.h),
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
                                                              text: "POPULAR",
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
                                                              text: "Subscribe",
                                                              buttonStyle:
                                                                  CustomButtonStyles
                                                                      .fillGreenA,
                                                              buttonTextStyle:
                                                                  CustomTextStyles
                                                                      .labelMediumOnPrimary),
                                                          SizedBox(height: 5.v),
                                                          CustomOutlinedButton(
                                                              width: 77.h,
                                                              text: "ADD")
                                                        ]))),
                                           
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 29.v),
                                                    child: Text(
                                                        productData['quantity']
                                                            .toString(),
                                                        style: theme.textTheme
                                                            .labelMedium))),
                                           
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 152.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          SizedBox(
                                                              height: 100.v),
                                                          Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    productData[
                                                                            'price']
                                                                        .toString(),
                                                                    style: CustomTextStyles
                                                                        .labelMediumBlack900),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 16
                                                                            .h),
                                                                    child: Text(
                                                                        productData['price']
                                                                            .toString(),
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelMedium!
                                                                            .copyWith(decoration: TextDecoration.lineThrough)))
                                                              ]),
                                                       
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
                                                    child: Text("30% OFF",
                                                        style: CustomTextStyles
                                                            .labelSmallBlack900))),
                                           
                                            CustomElevatedButton(
                                                height: 29.v,
                                                width: 299.h,
                                                text:
                                                    "You are saving ₹20 (30% OFF)With VIP ",
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
                                          ]))
                              ])))));
        }
      },
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
        const begin = Offset(-1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation1.drive(tween);
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
