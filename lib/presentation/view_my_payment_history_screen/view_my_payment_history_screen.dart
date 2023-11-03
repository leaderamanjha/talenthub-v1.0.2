import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class ViewMyPaymentHistoryScreen extends StatelessWidget {
  const ViewMyPaymentHistoryScreen({Key? key})
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
                right: 30.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 335.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Payment history \n\n",
                            style: CustomTextStyles.titleSmallBluegray40014,
                          ),
                          TextSpan(
                            text:
                                " Go to \"My Wallet\" tab from the side menu or tap on \"wallet\" icon at the top right corner on home page\nClick on the 'History' tab at the top right corner of wallet \r\n",
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
                  CustomElevatedButton(
                    text: "View my payment history? ",
                    margin: EdgeInsets.only(
                      left: 33.h,
                      top: 22.v,
                      right: 27.h,
                    ),
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
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
