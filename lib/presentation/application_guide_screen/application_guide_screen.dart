import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/add_vacation_one_screen/add_vacation_one_screen.dart';
import 'package:talenthub/presentation/help_screen/help_screen.dart';
import 'package:talenthub/presentation/place_an_order_screen/place_an_order_screen.dart';
import 'package:talenthub/presentation/recharge_my_wallet_screen/recharge_my_wallet_screen.dart';
import 'package:talenthub/presentation/view_current_offers_screen/view_current_offers_screen.dart';
import 'package:talenthub/presentation/view_my_bill_screen/view_my_bill_screen.dart';
import 'package:talenthub/presentation/view_my_payment_history_screen/view_my_payment_history_screen.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';

class ApplicationGuideScreen extends StatelessWidget {
  const ApplicationGuideScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 48.h,
          leading: AppbarImage(
            imagePath: ImageConstant.imgBack,
            onTap: () {
              onTapImgBack(context);
            },
            margin: EdgeInsets.only(
              left: 21.h,
              top: 15.v,
              bottom: 11.v,
            ),
          ),
          title: AppbarSubtitle1(
            text: "Application Guide",
            margin: EdgeInsets.only(left: 7.h),
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 27.h),
                child: Text(
                  "I want to?",
                  style: CustomTextStyles.bodyMediumBluegray400,
                ),
              ),
              SizedBox(height: 3.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: GestureDetector(
                  onTap: () {
                    onTapPlaceOrder(context);
                  },
                  child: Text(
                    "Place an order                                                            ",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: GestureDetector(
                  onTap: () {
                    onTapAddVacation(context);
                  },
                  child: Text(
                    "Add a vacation                                                           ",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: GestureDetector(
                  onTap: () {
                    onTapRecharge(context);
                  },
                  child: Text(
                    "Recharge my wallet                                                      ",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: GestureDetector(
                  onTap: () {
                    onPaymentHistory(context);
                  },
                  child: Text(
                    "Payment History                                                        ",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: GestureDetector(
                  onTap: () {
                    onTapViewMyBill(context);
                  },
                  child: Text(
                    "View my bill                                                              ",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: GestureDetector(
                  onTap: () {
                    onTapCurrentOffer(context);
                  },
                  child: Text(
                    "View current offers                                                    ",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  onTapImgBack(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => HelpScreen(),
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

  onTapPlaceOrder(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            PlaceAnOrderScreen(),
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

  onTapAddVacation(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            AddVacationOneScreen(),
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

  onTapRecharge(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            RechargeMyWalletScreen(),
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

  onPaymentHistory(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ViewMyPaymentHistoryScreen(),
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

  onTapViewMyBill(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ViewMyBillScreen(),
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

  onTapCurrentOffer(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ViewCurrentOffersScreen(),
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
}
