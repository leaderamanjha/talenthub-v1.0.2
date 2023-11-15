import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/cart_screen/cart_screen.dart';
import 'package:talenthub/presentation/help_screen/help_screen.dart';
import 'package:talenthub/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_2.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_6.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class MoreScreen extends StatelessWidget {
  MoreScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
          height: 57.v,
          title: AppbarSubtitle6(
              text: "Products and Subscriptions",
              margin: EdgeInsets.only(left: 17.h)),
          actions: [
            AppbarImage2(
                imagePath: ImageConstant.imgFavorite,
                margin: EdgeInsets.fromLTRB(28.h, 19.v, 16.h, 1.v)),
            AppbarImage2(
                imagePath: ImageConstant.imgFastcart,
                margin: EdgeInsets.only(left: 2.h, top: 19.v, right: 44.h),
                onTap: () {
                  onTapFastcartone(context);
                })
          ]),
      body: SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 17.h),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(left: 40.h, right: 43.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgBox,
                            height: 34.v,
                            width: 36.h,
                            margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
                            onTap: () {
                              onTapImgBoxone(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgNaturaluserinterface,
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
                            onTap: () {
                              onTapImgNaturaluserinte(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgHoliday,
                            height: 37.adaptSize,
                            width: 37.adaptSize,
                            onTap: () {
                              onTapImgHolidayone(context);
                            })
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 30.h, top: 2.v, right: 17.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapTxtProducts(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("Products",
                                    style: CustomTextStyles
                                        .labelLargeBlack900_1))),
                        GestureDetector(
                            onTap: () {
                              onTapTxtMysubscriptions(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 33.h),
                                child: Text("My Subscriptions",
                                    style: CustomTextStyles
                                        .labelLargeBlack900_1))),
                        GestureDetector(
                            onTap: () {
                              onTapTxtSetvacation(context);
                            },
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 20.h, bottom: 1.v),
                                child: Text("Set Vacation",
                                    style:
                                        CustomTextStyles.labelLargeBlack900_1)))
                      ])),
              SizedBox(height: 26.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Orders and Billing",
                      style: CustomTextStyles.labelLargeBlack900_1)),
              Padding(
                  padding: EdgeInsets.only(left: 40.h, top: 10.v, right: 43.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgOrderhistory,
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v),
                            onTap: () {
                              onTapImgOrderhistory(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgTransaction,
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            margin: EdgeInsets.only(top: 1.v),
                            onTap: () {
                              onTapImgTransactionone(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgBill,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 1.v))
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 2.v, right: 22.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapTxtOrderhistory(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("Order History",
                                    style: CustomTextStyles
                                        .labelLargeBlack900_1))),
                        GestureDetector(
                            onTap: () {
                              onTapTxtTransactions(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 31.h),
                                child: Text("Transactions  ",
                                    style: CustomTextStyles
                                        .labelLargeBlack900_1))),
                        Padding(
                            padding: EdgeInsets.only(left: 30.h, top: 1.v),
                            child: Text("Monthly Bill",
                                style: CustomTextStyles.labelLargeBlack900_1))
                      ])),
              SizedBox(height: 26.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Rewards",
                      style: CustomTextStyles.labelLargeBlack900_1)),
              Padding(
                  padding: EdgeInsets.only(left: 40.h, top: 10.v, right: 43.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgShare,
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v),
                            onTap: () {
                              onTapImgShareone(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgDiscount,
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            margin: EdgeInsets.only(top: 1.v, right: 117),
                            onTap: () {
                              onTapImgDiscount(context);
                            }),
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 2.v, right: 22.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapTxtRefer(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(top: 1.v, right: 70),
                                child: Text("Refer",
                                    style: CustomTextStyles
                                        .labelLargeBlack900_1))),
                        GestureDetector(
                            onTap: () {
                              onTapTxtOfferZone(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(top: 1.v, right: 90),
                                child: Text("Offer Zone ",
                                    style: CustomTextStyles
                                        .labelLargeBlack900_1))),
                      ])),
              SizedBox(height: 22.v),
              Container(
                  padding: EdgeInsets.all(12.h),
                  decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder13),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEditaccount,
                                  height: 29.adaptSize,
                                  width: 29.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 5.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Account & Preferences",
                                            style: theme.textTheme.titleSmall),
                                        Text(
                                            "Edit Address, Delivery Preferences  ",
                                            style:
                                                CustomTextStyles.labelMedium11)
                                      ])),
                              Spacer(),
                              CustomImageView(
                                  imagePath: ImageConstant.imgForward,
                                  height: 21.adaptSize,
                                  width: 21.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 9.v))
                            ])),
                    Padding(
                        padding: EdgeInsets.only(left: 7.h, top: 30.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgWallet29x29,
                                  height: 29.adaptSize,
                                  width: 29.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 1.v, bottom: 7.v)),
                              Container(
                                  height: 37.v,
                                  width: 225.h,
                                  margin: EdgeInsets.only(left: 15.h),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 1.h),
                                                child: Text(
                                                    "Wallet & Payment Modes",
                                                    style: theme.textTheme
                                                        .titleSmall))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 20.v),
                                              child: Text(
                                                  "Add Money, Add or remove Saved Cards",
                                                  style: CustomTextStyles
                                                      .labelMedium11),
                                            ))
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgForward,
                                  height: 21.adaptSize,
                                  width: 21.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 33.h, top: 7.v, bottom: 9.v))
                            ])),
                    GestureDetector(
                        onTap: () {
                          onTapRowhelpone(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 5.h, top: 30.v),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgHelp,
                                      height: 29.adaptSize,
                                      width: 29.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 2.v, bottom: 5.v)),
                                  Container(
                                      height: 36.v,
                                      width: 115.h,
                                      margin: EdgeInsets.only(left: 17.h),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2.h),
                                                    child: Text("Need Help?",
                                                        style: theme.textTheme
                                                            .titleSmall))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 20.v),
                                                  child: Text(
                                                      "Call or Chat with us ",
                                                      style: CustomTextStyles
                                                          .labelMedium11),
                                                ))
                                          ])),
                                  Spacer(),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgForward,
                                      height: 21.adaptSize,
                                      width: 21.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 7.v, bottom: 8.v))
                                ]))),
                    GestureDetector(
                        onTap: () {
                          onTapRowlegel(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 5.h, top: 31.v),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgScales,
                                      height: 29.adaptSize,
                                      width: 29.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 2.v, bottom: 6.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 18.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Legal",
                                                style:
                                                    theme.textTheme.titleSmall),
                                            Text("Privacy, Terms & Conditions",
                                                style: CustomTextStyles
                                                    .labelMedium11)
                                          ])),
                                  Spacer(),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgForward,
                                      height: 21.adaptSize,
                                      width: 21.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 7.v, bottom: 9.v))
                                ]))),
                    GestureDetector(
                        onTap: () {
                          onTapRowLogout(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 7.h, top: 20.v, bottom: 7.v),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLogout,
                                      height: 29.adaptSize,
                                      width: 29.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 3.v, bottom: 5.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Logout",
                                                style:
                                                    theme.textTheme.titleSmall),
                                            Text("Logout",
                                                style: CustomTextStyles
                                                    .labelMedium11)
                                          ])),
                                  Spacer(),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgForward,
                                      height: 21.adaptSize,
                                      width: 21.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 6.v, bottom: 10.v))
                                ])))
                  ])),
              SizedBox(height: 5.v)
            ])),
      ),
    ));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenContainerPage;
      case BottomBarEnum.Products:
        return "/";
      case BottomBarEnum.Wallet:
        return "/";
      case BottomBarEnum.Reffer:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenContainerPage:
        return HomeScreenContainerPage();
      default:
        return DefaultWidget();
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

  onTapImgBoxone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.milkScreen);
  }

  onTapImgNaturaluserinte(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.subscriptionScreen);
  }

  onTapImgHolidayone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.vacationsScreen);
  }

  onTapTxtProducts(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.milkScreen);
  }

  onTapTxtMysubscriptions(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.subscriptionScreen);
  }

  onTapTxtSetvacation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.vacationsScreen);
  }

  onTapImgTransactionone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.trasactionHistoryScreen);
  }

  onTapTxtOrderhistory(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.orderHistoryScreen);
  }

  onTapImgOrderhistory(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.orderHistoryScreen);
  }

  onTapTxtTransactions(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.trasactionHistoryScreen);
  }

  onTapTxtRefer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.referalScreen);
  }

  onTapImgShareone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.referalScreen);
  }

  onTapTxtOfferZone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.offersScreen);
  }

  onTapImgDiscount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.offersScreen);
  }

  onTapRowhelpone(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => HelpScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    );
  }

  onTapRowlegel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tCReferalScreen);
  }

  onTapRowLogout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.welcomeScreen);
  }
}
