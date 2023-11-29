import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
import 'package:talenthub/widgets/custom_pin_code_text_field.dart';

class AuthProvider with ChangeNotifier {
  String _authToken = '';

  String get authToken => _authToken;

  void setAuthToken(String token) {
    _authToken = token;
    notifyListeners(); // Notify listeners when the authToken changes
  }

  static AuthProvider of(BuildContext context) {
    return context.read<AuthProvider>();
  }
}

// ignore: must_be_immutable
class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({Key? key}) : super(key: key);

  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: Consumer<AuthProvider>(
        builder: (context, authProvider, _) {
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
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h, top: 32.v),
                      child: Text("OTP Verification", style: CustomTextStyles.titleSmall14_1),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h, top: 4.v),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(text: "Enter OTP sent to ", style: CustomTextStyles.bodySmallLight_2),
                          TextSpan(text: "7992231165", style: CustomTextStyles.labelLargeBlack900),
                        ]),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      margin: EdgeInsets.only(left: 19.h, top: 28.v, right: 19.h),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(text: "Don’t receive the OTP?", style: CustomTextStyles.bodySmallLight_2),
                          TextSpan(text: " "),
                          TextSpan(
                            text: "RESEND OTP",
                            style: CustomTextStyles.labelLargeRed400,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                onTapResendOtp(context);
                              },
                          ),
                        ]),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      text: "VERIFY & PROCEED",
                      margin: EdgeInsets.only(left: 14.h, right: 7.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: theme.textTheme.bodyLarge!,
                      onTap: () {
                        onTapVerifyProceed(context, authProvider);
                      },
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  onTapImgBackone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }

  onTapResendOtp(BuildContext context) async {
    // Implement logic to resend OTP here
    // You may want to call your backend API to send a new OTP
  }

  onTapVerifyProceed(BuildContext context, AuthProvider authProvider) async {
    final String enteredOtp = otpController.text;
    final String apiUrl = "http://192.168.1.17:5000/api/user/signup/verify"; // Replace with your actual backend URL

    try {
      final http.Response response = await http.post(Uri.parse(apiUrl), body: {
        'otp': enteredOtp,
      });

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final String authToken = data['authToken']; // Replace with the actual key your backend sends
        authProvider.setAuthToken(authToken);

        Navigator.pushNamed(context, AppRoutes.vipScreen);
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }
}
