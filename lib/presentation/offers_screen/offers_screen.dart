import '../offers_screen/widgets/hotdeals_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 54.h,
          leading: AppbarImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(
              left: 27.h,
              top: 15.v,
              bottom: 11.v,
            ),
          ),
          title: AppbarSubtitle1(
            text: "Offers \r",
            margin: EdgeInsets.only(left: 11.h),
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 15.h,
                  top: 19.v,
                  right: 5.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 17.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 7.v,
                        bottom: 11.v,
                      ),
                      child: Text(
                        "Enter Promo Code \r",
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                    ),
                    CustomElevatedButton(
                      height: 44.v,
                      width: 96.h,
                      text: "APPLY",
                      margin: EdgeInsets.only(right: 2.h),
                      buttonStyle: CustomButtonStyles.fillIndigoA,
                      buttonTextStyle: CustomTextStyles.bodySmallOnPrimary,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 7.v,
                ),
                decoration: AppDecoration.fillGray300.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL19,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 28.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13.h,
                        vertical: 10.v,
                      ),
                      decoration: AppDecoration.fillBlue.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL19,
                      ),
                      child: Text(
                        "Coupon code applied ",
                        style: CustomTextStyles.bodyMedium15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 12.v,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: 7.v,
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return HotdealsItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
