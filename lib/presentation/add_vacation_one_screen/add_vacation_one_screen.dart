import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';

class AddVacationOneScreen extends StatelessWidget {
  const AddVacationOneScreen({Key? key})
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
                right: 28.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 333.h,
                    child: Text(
                      "Add a vacation\n \r\nGo to vacations tab in the side menu \nTap on \"+\" icon • Select \"Start date\" and \"End date\" \nClick on done \nThis will enable the vacation for the selected duration and none of the products will be delivered",
                      maxLines: 9,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmall14_1.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 33.h,
                      top: 17.v,
                      right: 29.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 71.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.green.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "Add a vacation?",
                      style: CustomTextStyles.titleMediumOnPrimary,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  SizedBox(
                    width: 337.h,
                    child: Text(
                      "Note\n\nDelivery will be resumed from the next day of end date\nYou can verify the vacation dates on the calendar (home) screen which will be marked red.\nYou cannot mark vacation for present day ",
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmall14_1.copyWith(
                        height: 1.64,
                      ),
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
