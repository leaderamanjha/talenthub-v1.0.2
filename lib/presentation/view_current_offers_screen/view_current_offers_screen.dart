import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
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
                                "Go to “offers” tab in the side menu\nCheck the available/applicable offers and click to apply",
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
                      horizontal: 56.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.green.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "View Current offers?",
                      style: CustomTextStyles.titleMediumOnPrimary,
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
