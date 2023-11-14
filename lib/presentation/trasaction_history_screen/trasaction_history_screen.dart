import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/milk_screen/milk_screen.dart';
import 'package:talenthub/presentation/more_screen/more_screen.dart';
import 'package:talenthub/widgets/app_bar/appbar_button.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_3.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_9.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class TrasactionHistoryScreen extends StatelessWidget {
  const TrasactionHistoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.v),
                decoration: AppDecoration.fillOnPrimary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4.v),
                    CustomAppBar(
                      height: 109.v,
                      title: Padding(
                        padding: EdgeInsets.only(left: 27.h),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Row(
                                children: [
                                  AppbarImage3(
                                    imagePath: ImageConstant.imgBack,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                    onTap: () {
                                      onTapImgBack(context);
                                    },
                                  ),
                                  AppbarSubtitle5(
                                    text: "Transaction History",
                                    margin: EdgeInsets.only(
                                      left: 1.h,
                                      top: 1.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AppbarSubtitle9(
                              text: "Current Wallet Balance",
                              margin: EdgeInsets.only(
                                top: 31.v,
                                right: 49.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 4.v,
                                right: 149.h,
                              ),
                              child: Row(
                                children: [
                                  AppbarSubtitle(
                                    text: "₹",
                                  ),
                                  AppbarSubtitle4(
                                    text: "0.0",
                                    margin: EdgeInsets.only(
                                      left: 4.h,
                                      top: 1.v,
                                      bottom: 1.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        AppbarButton(
                          margin: EdgeInsets.only(
                            left: 27.h,
                            top: 75.v,
                            right: 27.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 58.h,
                  vertical: 20.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "No Transections ",
                        style: CustomTextStyles
                            .titleSmallOnPrimaryContainerSemiBold,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    SizedBox(
                      width: 270.h,
                      child: Text(
                        "You haven’t made any transections,\nplease explore our products.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumOnPrimaryContainer
                            .copyWith(
                          height: 1.47,
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      height: 34.v,
                      width: 145.h,
                      text: "EXPLORE PRODUCTS",
                      margin: EdgeInsets.only(
                        left: 55.h,
                        top: 13.v,
                        bottom: 5.v,
                      ),
                      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary12,
                      onTap: () {
                        onTapTxtExplore(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapTxtExplore(BuildContext context) {
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
        transitionDuration: Duration(milliseconds: 200),
      ),
    );
  }

  onTapTxtMoney(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.milkScreen);
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
}
