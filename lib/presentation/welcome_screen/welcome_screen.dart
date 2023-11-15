import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
// ignore: unused_import
import 'package:talenthub/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

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
            padding: EdgeInsets.symmetric(vertical: 30.v),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 2.h, top: 18.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 73.h, vertical: 14.v),
                  decoration: AppDecoration.fillOnPrimary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 15.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgDelivery2,
                        height: 236.v,
                        width: 240.h,
                      ),
                      SizedBox(height: 32.v),
                      Text("Farm To home",
                          style: CustomTextStyles.titleMediumPrimary),
                    ],
                  ),
                ),
                SizedBox(height: 49.v),
                CustomImageView(
                    svgPath: ImageConstant.imgGroup58,
                    height: 5.v,
                    width: 69.h),
                Spacer(),
                Text("Get Started", style: CustomTextStyles.bodyMedium14_1),
                TextFormField(
                  controller: mobileNumberController,
                  decoration: InputDecoration(
                    hintText: "Enter Mobile Number",
                    prefixIcon: Container(
                      margin: EdgeInsets.fromLTRB(8.h, 9.v, 30.h, 9.v),
                      child: CustomImageView(svgPath: ImageConstant.imgLaptop),
                    ),
                    contentPadding:
                        EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              Colors.blueGrey), // Add your desired border color
                    ),
                    enabled: false, // Set to false to make it non-editable
                  ),
                ),
                CustomElevatedButton(
                  text: "Continue",
                  margin: EdgeInsets.only(left: 26.h, top: 27.v, right: 26.h),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: theme.textTheme.bodyLarge!,
                  onTap: () {
                    onTapContinue(context);
                  },
                ),
                SizedBox(
                  height: 15.v,
                ),
                SizedBox(
                  width: 133.h,
                  child: Text(
                    "By Signing up you agree to \nTnc and Privacy Policy",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmall10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileNumberScreen);
  }
}
