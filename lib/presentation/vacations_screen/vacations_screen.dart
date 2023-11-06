import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_bottom_bar.dart';

class VacationsScreen extends StatelessWidget {
  VacationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 57.h,
          leading: AppbarImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(
              left: 30.h,
              top: 15.v,
              bottom: 11.v,
            ),
          ),
          title: AppbarSubtitle5(
            text: "Vacations",
            margin: EdgeInsets.only(left: 2.h),
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 52.h,
            vertical: 53.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgWomantakingselfie,
                height: 332.v,
                width: 273.h,
                alignment: Alignment.centerLeft,
              ),
              Text(
                "You have no vacation added",
                style: CustomTextStyles.bodyMediumOnPrimaryContainer,
              ),
              SizedBox(height: 39.v),
              GestureDetector(
                onTap: () {
                  onTapTxtAddVacation(context);
                },
                child: Text(
                  "Add Vacation",
                  style: CustomTextStyles.bodyMediumPrimary,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
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

  onTapTxtAddVacation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addVacationScreen);
  }
}
