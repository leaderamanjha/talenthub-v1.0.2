import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 57.h,
          leading: AppbarImage(
            imagePath: ImageConstant.imgBack,
            onTap: () {
              onTapImgBack(context);
            },
            margin: EdgeInsets.only(
              left: 30.h,
              top: 15.v,
              bottom: 11.v,
            ),
          ),
          title: AppbarSubtitle5(
            text: "My Subscription ",
            margin: EdgeInsets.only(left: 15.h),
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 60.h,
            vertical: 39.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgConsultingandbusiness,
                height: 192.v,
                width: 269.h,
              ),
              SizedBox(height: 33.v),
              Text(
                "No Subscription",
                style: CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
              ),
              Container(
                width: 246.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 2.v,
                  right: 12.h,
                ),
                child: Text(
                  " Where Freshness Meets\nConvenience – Your Daily\nDose of Milk, Delivered with Care!",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer.copyWith(
                    height: 1.47,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              CustomElevatedButton(
                height: 34.v,
                width: 145.h,
                text: "EXPLORE PRODUCTS",
                buttonTextStyle: CustomTextStyles.labelLargeOnPrimary12,
                onTap: () {
                  onTapTxtExplore(context);
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  onTapImgBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.moreScreen);
  }

  onTapTxtExplore(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.milkScreen);
  }
}
