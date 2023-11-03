import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
import 'package:talenthub/widgets/custom_pin_code_text_field.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBack,
                          height: 31.adaptSize,
                          width: 31.adaptSize,
                          radius: BorderRadius.circular(4.h),
                          onTap: () {
                            onTapImgBackone(context);
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h, top: 32.v),
                          child: Text("OTP Verification",
                              style: CustomTextStyles.titleSmall14_1)),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h, top: 4.v),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Enter OTP sent to ",
                                    style: CustomTextStyles.bodySmallLight_2),
                                TextSpan(
                                    text: "+91-8802768985",
                                    style: CustomTextStyles.labelLargeBlack900)
                              ]),
                              textAlign: TextAlign.left)),
                      CustomPinCodeTextField(
                          context: context,
                          margin: EdgeInsets.only(
                              left: 19.h, top: 28.v, right: 19.h),
                          onChanged: (value) {}),
                      SizedBox(height: 22.v),
                      Align(
                          alignment: Alignment.center,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Don’t receive the OTP?",
                                    style: CustomTextStyles.bodySmallLight_2),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "RESEND OTP",
                                    style: CustomTextStyles.labelLargeRed400)
                              ]),
                              textAlign: TextAlign.left)),
                      Spacer(),
                      CustomElevatedButton(
                          text: "VERIFY & PROCEED",
                          margin: EdgeInsets.only(left: 14.h, right: 7.h),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: theme.textTheme.bodyLarge!,
                          onTap: () {
                            onTapVerifyproceed(context);
                          },
                          alignment: Alignment.center)
                    ]))));
  }

  /// Navigates to the splashScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the splashScreen.
  onTapImgBackone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }

  /// Navigates to the vipScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the vipScreen.
  onTapVerifyproceed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.vipScreen);
  }
}
