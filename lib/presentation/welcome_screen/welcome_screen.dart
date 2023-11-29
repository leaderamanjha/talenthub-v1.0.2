import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
import 'package:talenthub/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  TextEditingController numberController = TextEditingController();

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
            padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 30.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 5.v),
                  child: Text("Get Started",
                      style: CustomTextStyles.bodyMedium14_1),
                ),
                SizedBox(height: 16.v),
                CustomTextFormField(
                  controller: numberController,
                  hintText: "Enter Mobile Number",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.phone,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(8.h, 9.v, 30.h, 9.v),
                    child: CustomImageView(svgPath: ImageConstant.imgLaptop),
                  ),
                  prefixConstraints: BoxConstraints(maxHeight: 47.v),
                  contentPadding:
                      EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
                  filled: false,
                ),
                Spacer(),
                CustomElevatedButton(
                  text: "Continue",
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: theme.textTheme.bodyLarge!,
                  onTap: () {
                    onTapContinue(context);
                  },
                ),
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
                      style: CustomTextStyles.bodySmall10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapContinue(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      final String mobileNumber = numberController.text;
      final String apiUrl = 'http://192.168.1.17:5000/api/user/signup';

      try {
        // Send mobile number to backend for OTP generation
        final http.Response response =
            await http.post(Uri.parse(apiUrl), body: {
          'number': mobileNumber,
        });

        if (response.statusCode == 200) {
          try {
            Navigator.pushNamed(
              context,
              AppRoutes.otpVerificationScreen,
            );
          } catch (e) {
            // If parsing as JSON fails, check if the response body contains a success message
            if (response.body.toLowerCase().contains('otp send successfully')) {
              print('Otp sent successfully!');
              // Handle success as needed
            } else {
              print('Error parsing response body as JSON: ${response.body}');
            }
          }
        } else {
          // Handle non-200 status codes
          print('Error: ${response.statusCode}');
        }
      } catch (error) {
        // Handle network error
        print('Error: $error');
      }
    }
  }
}
