import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';

class ViewMyBillScreen extends StatelessWidget {
  const ViewMyBillScreen({Key? key})
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
            padding: EdgeInsets.only(top: 18.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 58.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 302.h,
                    margin: EdgeInsets.only(right: 5.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "View My Bill\n\n",
                            style: CustomTextStyles.titleSmallBluegray40014,
                          ),
                          TextSpan(
                            text:
                                "Go to “View bill” tab in the side menu\nBill details will be fetched for the current month \nTap “>” or ”<” to view the bills of other months\n",
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
                      top: 22.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 80.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.green.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text(
                          "View my bill?",
                          style: CustomTextStyles.titleMediumOnPrimary,
                        ),
                      ],
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
}
