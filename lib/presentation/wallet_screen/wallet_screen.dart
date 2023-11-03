import '../wallet_screen/widgets/listrecommended_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_4.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_10.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_7.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 7.v),
                decoration: AppDecoration.fillOnPrimary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(
                      height: 36.v,
                      leadingWidth: 54.h,
                      leading: AppbarImage(
                        imagePath: ImageConstant.imgBack,
                        margin: EdgeInsets.only(
                          left: 27.h,
                          top: 5.v,
                          bottom: 7.v,
                        ),
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(
                          children: [
                            AppbarImage4(
                              imagePath: ImageConstant.imgHome,
                            ),
                            AppbarSubtitle5(
                              text: "Wallet",
                              margin: EdgeInsets.only(
                                left: 86.h,
                                top: 5.v,
                                bottom: 3.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 23.h,
                            top: 2.v,
                            right: 20.h,
                          ),
                          child: Column(
                            children: [
                              AppbarSubtitle7(
                                text: "Balance",
                              ),
                              AppbarSubtitle10(
                                text: "₹0",
                                margin: EdgeInsets.symmetric(horizontal: 18.h),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.v),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 59.v,
                        width: 355.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.only(top: 7.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.h,
                                  vertical: 16.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBluegray400.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text(
                                        "₹",
                                        style: CustomTextStyles
                                            .labelLargeBlack90012,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 1.h,
                                        top: 1.v,
                                      ),
                                      child: Text(
                                        "500",
                                        style: CustomTextStyles
                                            .labelLargeBlack90012,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 35.h),
                                child: Text(
                                  "Add Money",
                                  style: CustomTextStyles.labelLargeGray700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 21.v,
                        bottom: 26.v,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 77.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.h,
                              vertical: 8.v,
                            ),
                            decoration:
                                AppDecoration.outlineBluegray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "₹",
                                  style: CustomTextStyles.labelLargeBlack90012,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    "1000",
                                    style:
                                        CustomTextStyles.labelLargeBlack90012,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 77.h,
                            margin: EdgeInsets.only(left: 11.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 8.v,
                            ),
                            decoration:
                                AppDecoration.outlineBluegray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "₹",
                                  style: CustomTextStyles.labelLargeBlack90012,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    "2000",
                                    style:
                                        CustomTextStyles.labelLargeBlack90012,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 77.h,
                            margin: EdgeInsets.only(left: 9.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 8.v,
                            ),
                            decoration:
                                AppDecoration.outlineBluegray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "₹",
                                  style: CustomTextStyles.labelLargeBlack90012,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    "3000",
                                    style:
                                        CustomTextStyles.labelLargeBlack90012,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      right: 9.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                height: 19.v,
                              );
                            },
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return ListrecommendedItemWidget();
                            },
                          ),
                        ),
                        SizedBox(height: 19.v),
                        Container(
                          decoration: AppDecoration.fillGray300.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder18,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 22.v,
                                  right: 21.h,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 3.v),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.h,
                                              vertical: 4.v,
                                            ),
                                            decoration: AppDecoration.green,
                                            child: Text(
                                              "HOT DEALS",
                                              style: CustomTextStyles
                                                  .labelLargeOnPrimary_1,
                                            ),
                                          ),
                                          SizedBox(height: 7.v),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: SizedBox(
                                              width: 224.h,
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          "Milk Pouch buy: Non Buyer non mem\n",
                                                      style: CustomTextStyles
                                                          .titleMediumBlack900Medium,
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "Enjoy freshly grounded Idli\nDosa Batter",
                                                      style: CustomTextStyles
                                                          .bodyMedium15_1
                                                          .copyWith(
                                                        height: 1.29,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 6.h,
                                        top: 47.v,
                                      ),
                                      child: Column(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle18153x222,
                                            height: 63.v,
                                            width: 99.h,
                                          ),
                                          SizedBox(height: 8.v),
                                          Text(
                                            "20% OFF",
                                            style: CustomTextStyles
                                                .bodySmallPrimary10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  top: 11.v,
                                ),
                                child: Text(
                                  "*Offer valid till 24/11/2023 ",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              SizedBox(height: 26.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 17.h,
                                  vertical: 7.v,
                                ),
                                decoration: AppDecoration.fillBlue.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL19,
                                ),
                                child: Text(
                                  "Coupon code applied ",
                                  style: CustomTextStyles.bodyMedium15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 48.v,
          text: "Pay ₹ 500",
          margin: EdgeInsets.only(
            left: 17.h,
            right: 18.h,
            bottom: 22.v,
          ),
          buttonStyle: CustomButtonStyles.fillPrimaryTL16,
          buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
        ),
      ),
    );
  }
}
