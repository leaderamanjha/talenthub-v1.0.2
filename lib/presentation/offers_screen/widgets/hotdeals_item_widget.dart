import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';

// ignore: must_be_immutable
class HotdealsItemWidget extends StatelessWidget {
  const HotdealsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
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
              top: 25.v,
              right: 22.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 11.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.green,
                        child: Text(
                          "HOT DEALS",
                          style: CustomTextStyles.labelLargeOnPrimary_1,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 224.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Milk Pouch buy: Non Buyer non mem\n",
                                  style: CustomTextStyles
                                      .titleMediumBlack900Medium,
                                ),
                                TextSpan(
                                  text:
                                      "Enjoy freshly grounded Idli\nDosa Batter",
                                  style:
                                      CustomTextStyles.bodyMedium15_1.copyWith(
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
                    left: 11.h,
                    top: 52.v,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle18153x222,
                        height: 70.v,
                        width: 102.h,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "20% OFF",
                        style: CustomTextStyles.bodySmallPrimary10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 14.v,
            ),
            child: Text(
              "*Offer valid till 24/11/2023 ",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 31.v),
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
    );
  }
}
