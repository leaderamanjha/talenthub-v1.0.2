import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:talenthub/widgets/app_bar/appbar_title.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';

class AfterAddingVacationScreen extends StatelessWidget {
  const AfterAddingVacationScreen({Key? key})
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
            text: "Vacations",
            margin: EdgeInsets.only(left: 18.h),
          ),
          actions: [
            AppbarTitle(
              text: "+",
              margin: EdgeInsets.fromLTRB(28.h, 7.v, 28.h, 4.v),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(vertical: 8.v),
          padding: EdgeInsets.symmetric(vertical: 26.v),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 58.v,
                width: 256.h,
                margin: EdgeInsets.only(top: 1.v),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 256.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Start Date ",
                                  style:
                                      CustomTextStyles.titleSmallBluegray400_1,
                                ),
                                Text(
                                  "End Date",
                                  style:
                                      CustomTextStyles.titleSmallBluegray400_1,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 253.h,
                            margin: EdgeInsets.only(
                              top: 10.v,
                              right: 3.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text(
                                    "29-10-2023",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Text(
                                  "Optional",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 110.h),
                        child: SizedBox(
                          height: 57.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.gray40002,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBack20x29,
                height: 20.v,
                width: 29.h,
                radius: BorderRadius.circular(
                  4.h,
                ),
                margin: EdgeInsets.only(
                  top: 20.v,
                  bottom: 19.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
