import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

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
  OtpVerificationScreen({Key? key, required this.mobileNumber})
      : super(key: key);

  final String mobileNumber;
  // Declare mobileNumber as a class property

  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                        onTapImgBack(context);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h, top: 32.v),
                      child: Text("OTP Verification",
                          style: CustomTextStyles.titleSmall14_1),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h, top: 4.v),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Enter OTP sent to ",
                              style: CustomTextStyles.bodySmallLight_2),
                          TextSpan(
                              text: mobileNumber,
                              style: CustomTextStyles.labelLargeBlack900),
                        ]),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    TextField(
                      controller: otpController,
                      keyboardType: TextInputType
                          .text, // Use TextInputType.text to allow alphanumeric characters
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(
                            r'^[a-zA-Z0-9]+$')), // Allow only alphanumeric characters
                      ],
                      decoration: InputDecoration(
                        hintText: "Enter OTP",
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.v, horizontal: 20.h),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(8.h),
                        ),
                      ),
                    ),
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

  onTapImgBack(BuildContext context) {
    Navigator.pop(context); // Use Navigator.pop to go back
  }

  onTapResendOtp(BuildContext context) async {
    // Implement logic to resend OTP here
    // You may want to call your backend API to send a new OTP
  }

  onTapVerifyProceed(BuildContext context, AuthProvider authProvider) async {
    final String enteredOtp = otpController.text;
    final String apiUrl =
        'http://192.168.1.13:5000/api/user/signup/verify'; // Replace with your actual backend URL

    try {
      final http.Response response = await http.post(Uri.parse(apiUrl), body: {
        'number': '2028',
        'otp': enteredOtp,
      });

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final String authToken =
            data['authToken']; // Replace with the actual key your backend sends
        authProvider.setAuthToken(authToken);

        Navigator.pushNamed(context, AppRoutes.vipScreen);
      } else {
        print('Error: ${response.statusCode}');
        print('Response Body: ${response.body}');
        print('otp${enteredOtp}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }
}
