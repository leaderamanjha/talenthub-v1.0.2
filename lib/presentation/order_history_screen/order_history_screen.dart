import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({Key? key})
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
            margin: EdgeInsets.only(
              left: 30.h,
              top: 15.v,
              bottom: 11.v,
            ),
          ),
          title: AppbarSubtitle5(
            text: "Order History",
            margin: EdgeInsets.only(left: 26.h),
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(left: 15.h),
          padding: EdgeInsets.symmetric(vertical: 28.v),
          child: Column(
            children: [
              CustomImageView(
                margin: EdgeInsets.only(right: 45.h),
                imagePath: ImageConstant.imgRobotassistant,
                height: 214.v,
                width: 180.h,
              ),
              SizedBox(height: 21.v),
              Text(
                "No Order",
                style: CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: 229.h,
                child: Text(
                  "You haven’t made any orders, please explore our healthy products.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer.copyWith(
                    height: 1.47,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              CustomElevatedButton(
                height: 34.v,
                width: 145.h,
                text: "EXPLORE PRODUCTS",
                buttonTextStyle: CustomTextStyles.labelLargeOnPrimary12,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
