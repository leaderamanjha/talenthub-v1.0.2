import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class RechargeMyWalletScreen extends StatelessWidget {
  const RechargeMyWalletScreen({Key? key})
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
                            text: "Recharge my wallet\n\n",
                            style: CustomTextStyles.titleSmallBluegray40014,
                          ),
                          TextSpan(
                            text:
                                "Go to \"My Wallet\" tab from the side menu or tap on \"wallet\" icon at the top right corner on home page \nIt will provide you the funds available in your wallet along with the estimated monthly bill \nYou can select any option from recharge list with the respective Recharge pack available on the amount or you can manually enter the amount\nSelect the payment method \"card/net banking/wallet\" to make the payment \r\n",
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
                    text: "Recharge my wallet? ",
                    margin: EdgeInsets.only(
                      left: 33.h,
                      top: 23.v,
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
