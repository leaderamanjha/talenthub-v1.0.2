import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
import 'package:talenthub/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobileNumberScreen extends StatelessWidget {
  MobileNumberScreen({Key? key}) : super(key: key);

  TextEditingController mobileNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 26.h, vertical: 30.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 4.h, top: 5.v),
                              child: Text("Get Started",
                                  style: CustomTextStyles.bodyMedium14_1)),
                          SizedBox(height: 16.v),
                          CustomTextFormField(
                              controller: mobileNumberController,
                              hintText: "Enter Mobile Number",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone,
                              prefix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(8.h, 9.v, 30.h, 9.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLaptop)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 47.v),
                              contentPadding: EdgeInsets.only(
                                  top: 10.v, right: 30.h, bottom: 10.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineBlueGray,
                              filled: false),
                          Spacer(),
                          CustomElevatedButton(
                              text: "Continue",
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle: theme.textTheme.bodyLarge!,
                              onTap: () {
                                onTapContinue(context);
                              }),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: 133.h,
                                  child: Text(
                                      "By Signing up you agree to \nTnc and Privacy Policy",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmall10)))
                        ])))));
  }

  /// Navigates to the otpVerificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the otpVerificationScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpVerificationScreen);
  }
}
