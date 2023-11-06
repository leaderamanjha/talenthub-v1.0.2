import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_2.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
// ignore: unused_import
import 'package:talenthub/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.only(right: 3.h),
                      padding: EdgeInsets.symmetric(vertical: 10.v),
                      decoration: AppDecoration.fillOnPrimary,
                      child: Column(children: [
                        CustomAppBar(
                            height: 35.v,
                            leadingWidth: 49.h,
                            leading: AppbarImage(
                                imagePath: ImageConstant.imgBack,
                                margin: EdgeInsets.only(
                                    left: 22.h, top: 8.v, bottom: 3.v),
                                onTap: () {
                                  onTapBackone(context);
                                }),
                            actions: [
                              AppbarImage2(
                                  imagePath: ImageConstant.imgFavorite,
                                  margin: EdgeInsets.only(
                                      left: 27.h, top: 9.v, bottom: 7.v)),
                              AppbarImage2(
                                  imagePath: ImageConstant.imgFastcart,
                                  margin: EdgeInsets.only(
                                      left: 5.h, top: 8.v, bottom: 7.v),
                                  onTap: () {
                                    onTapFastcartone(context);
                                  }),
                              AppbarImage2(
                                  imagePath: ImageConstant.imgMenu,
                                  margin:
                                      EdgeInsets.only(left: 10.h, right: 27.h),
                                  onTap: () {
                                    onTapMenuone(context);
                                  })
                            ]),
                        SizedBox(height: 50.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle18153x222,
                            height: 153.v,
                            width: 222.h),
                        SizedBox(height: 58.v)
                      ])),
                  SizedBox(height: 21.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 26.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 127.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 1.v),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "Milk Medium Fat\n",
                                                        style: CustomTextStyles
                                                            .titleSmallBold_1),
                                                    TextSpan(
                                                        text: "₹",
                                                        style: theme.textTheme
                                                            .bodySmall),
                                                    TextSpan(
                                                        text: "60\n500ml",
                                                        style: theme.textTheme
                                                            .bodySmall!
                                                            .copyWith(
                                                                height: 1.29))
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5.v),
                                              child: Column(children: [
                                                CustomElevatedButton(
                                                    height: 22.v,
                                                    width: 94.h,
                                                    text: "Popular",
                                                    buttonStyle:
                                                        CustomButtonStyles.none,
                                                    decoration: CustomButtonStyles
                                                        .gradientGreenAToYellowADecoration),
                                                SizedBox(height: 12.v),
                                                SizedBox(
                                                    height: 18.v,
                                                    width: 95.h,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          29.h,
                                                                      vertical:
                                                                          1.v),
                                                                  decoration: AppDecoration
                                                                      .outlineGreenA
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder10),
                                                                  child: Container(
                                                                      height:
                                                                          16.v,
                                                                      width:
                                                                          37.h,
                                                                      decoration: BoxDecoration(
                                                                          color: theme
                                                                              .colorScheme
                                                                              .onPrimary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.h),
                                                                          border: Border.all(color: appTheme.greenA700, width: 1.h))))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "-",
                                                                            style:
                                                                                CustomTextStyles.labelLargeOnPrimary),
                                                                        TextSpan(
                                                                            text:
                                                                                ""),
                                                                        TextSpan(
                                                                            text:
                                                                                "  1 ",
                                                                            style:
                                                                                CustomTextStyles.labelLargeGreenA700),
                                                                        TextSpan(
                                                                            text:
                                                                                ""),
                                                                        TextSpan(
                                                                            text:
                                                                                "+",
                                                                            style:
                                                                                CustomTextStyles.labelLargeOnPrimary)
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left))
                                                        ]))
                                              ]))
                                        ])),
                                CustomElevatedButton(
                                    height: 29.v,
                                    width: 350.h,
                                    text:
                                        "You are saving ₹20 (30% OFF)With VIP     ",
                                    margin:
                                        EdgeInsets.only(top: 10.v, right: 20.h),
                                    rightIcon: Container(
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgKisspngemblem,
                                            height: 16.adaptSize,
                                            width: 16.adaptSize)),
                                    buttonStyle: CustomButtonStyles.none,
                                    decoration: CustomButtonStyles
                                        .gradientWhiteToYellow,
                                    buttonTextStyle:
                                        CustomTextStyles.labelLarge13,
                                    alignment: Alignment.topRight),
                                SizedBox(height: 19.v),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 2.v),
                                    decoration: AppDecoration.fillBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Text(
                                        "Offer applicable on max 5 units ",
                                        style: CustomTextStyles
                                            .labelLargeBluegray400)),
                                SizedBox(height: 23.v),
                                Divider(color: appTheme.blueGray400),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 27.h, top: 19.v),
                                        child: Text("Product Description",
                                            style: CustomTextStyles
                                                .labelLargeGray60001))),
                                Container(
                                    width: 328.h,
                                    margin: EdgeInsets.only(
                                        left: 27.h, top: 7.v, right: 35.h),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  "Indulge in the pure essence of nature with Orgaaa's 100% Organic Cow Milk. Sourced from our trusted network of local, pasture-raised cows, this milk is a testament to our commitment to providing the finest quality dairy products.\nKey Features:\n",
                                              style: CustomTextStyles
                                                  .bodySmallGray60001Light
                                                  .copyWith(height: 1.75)),
                                          TextSpan(
                                              text: "Purity in Every Drop:",
                                              style: CustomTextStyles
                                                  .labelLargeGray60001SemiBold),
                                          TextSpan(
                                              text:
                                                  " Orgaaa's milk is sourced from cows raised in the most pristine environments, ensuring that every drop is packed with the wholesome goodness of nature.\n",
                                              style: CustomTextStyles
                                                  .bodySmallGray60001Light),
                                          TextSpan(
                                              text: "Certified Organic:",
                                              style: CustomTextStyles
                                                  .labelLargeGray60001SemiBold),
                                          TextSpan(
                                              text:
                                                  " Our milk is certified 100% organic, free from synthetic hormones, antibiotics, and GMOs. It's a true celebration of natural farming practices.\n",
                                              style: CustomTextStyles
                                                  .bodySmallGray60001Light),
                                          TextSpan(
                                              text:
                                                  "Pasture-Raised Bliss: Our contented cows graze on lush, pesticide-free pastures, resulting in milk that's rich in essential nutrients, including omega-3 fatty acids and antioxidants.",
                                              style: CustomTextStyles
                                                  .labelLargeGray60001SemiBold)
                                        ]),
                                        textAlign: TextAlign.justify))
                              ]))))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "₹60",
                margin: EdgeInsets.only(left: 27.h, right: 26.h, bottom: 8.v),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle:
                    CustomTextStyles.titleSmallOnPrimarySemiBold)));
  }

  /// Navigates to the milkScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the milkScreen.
  onTapBackone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.milkScreen);
  }

  /// Navigates to the cartScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cartScreen.
  onTapFastcartone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }

  /// Navigates to the personalDetailContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the personalDetailContainerScreen.
  onTapMenuone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalDetailContainerScreen);
  }
}
