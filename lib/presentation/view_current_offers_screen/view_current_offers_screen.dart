import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/application_guide_screen/application_guide_screen.dart';
import 'package:talenthub/presentation/offers_screen/offers_screen.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';

class ViewCurrentOffersScreen extends StatelessWidget {
  const ViewCurrentOffersScreen({Key? key})
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
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 17.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 46.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 319.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "View Current offers\n\n",
                            style: CustomTextStyles.titleSmallBluegray40014,
                          ),
                          TextSpan(
                            text:
                                "● Go to “offers” tab in the side menu\n● Check the available/applicable offers and click to apply",
                            style: CustomTextStyles.titleSmallOnPrimaryContainer
                                .copyWith(
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 33.h,
                      top: 16.v,
                      right: 11.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 45.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.green.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        onTapCurrentoffer(context);
                      },
                      child: Text(
                        "View Current offers?",
                        style: CustomTextStyles.titleMediumOnPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapImgBack(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) =>
            ApplicationGuideScreen(),
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

  onTapCurrentoffer(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => OffersScreen(),
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
        transitionDuration: Duration(milliseconds: 300),
      ),
    );
  }
}
