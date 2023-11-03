import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class AddVacationScreen extends StatelessWidget {
  const AddVacationScreen({Key? key})
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
            text: "Add Vacation ",
            margin: EdgeInsets.only(left: 3.h),
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 45.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 3.v,
                        right: 8.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Start Date ",
                            style: CustomTextStyles.titleSmallBluegray400_1,
                          ),
                          Spacer(),
                          Text(
                            "29-10-2023",
                            style: theme.textTheme.titleSmall,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBack20x29,
                            height: 20.v,
                            width: 29.h,
                            radius: BorderRadius.circular(
                              4.h,
                            ),
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.v),
                      child: Divider(
                        color: appTheme.blueGray400,
                        indent: 7.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 14.v,
                        right: 8.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "End Date",
                            style: CustomTextStyles.titleSmallBluegray400_1,
                          ),
                          Spacer(),
                          Text(
                            "Optional",
                            style: theme.textTheme.titleSmall,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBack20x29,
                            height: 20.v,
                            width: 29.h,
                            radius: BorderRadius.circular(
                              4.h,
                            ),
                            margin: EdgeInsets.only(
                              left: 4.h,
                              bottom: 3.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 21.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4.v),
                    Text(
                      "29 Oct, 2023 - Optional ",
                      style: theme.textTheme.titleSmall,
                    ),
                    CustomElevatedButton(
                      text: "Add Vacation ",
                      margin: EdgeInsets.only(
                        left: 7.h,
                        top: 24.v,
                      ),
                      buttonStyle: CustomButtonStyles.fillIndigoA,
                      buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
