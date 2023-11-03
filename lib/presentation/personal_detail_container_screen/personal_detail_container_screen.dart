import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_2.dart';
import 'package:talenthub/widgets/app_bar/appbar_image_4.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';
import 'package:talenthub/widgets/custom_bottom_bar.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';
import 'package:talenthub/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalDetailContainerScreen extends StatelessWidget {
  PersonalDetailContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController editController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: 58.v,
                leadingWidth: 49.h,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgBack,
                    margin:
                        EdgeInsets.only(left: 22.h, top: 16.v, bottom: 15.v)),
                title: Row(children: [
                  AppbarImage4(
                      imagePath: ImageConstant.imgHome,
                      onTap: () {
                        onTapHomeone(context);
                      }),
                  AppbarSubtitle2(
                      text: "PROFILE",
                      margin: EdgeInsets.only(left: 9.h, top: 5.v, bottom: 3.v))
                ]),
                actions: [
                  AppbarImage2(
                      imagePath: ImageConstant.imgFavorite,
                      margin: EdgeInsets.fromLTRB(28.h, 18.v, 17.h, 1.v)),
                  AppbarImage2(
                      imagePath: ImageConstant.imgFastcart,
                      margin:
                          EdgeInsets.only(left: 2.h, top: 18.v, right: 45.h),
                      onTap: () {
                        onTapFastcartone(context);
                      })
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 16.v),
                    child: Column(children: [
                      SizedBox(height: 19.v),
                      SizedBox(
                          height: 206.v,
                          width: 199.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: 199.adaptSize,
                                    width: 199.adaptSize,
                                    decoration: BoxDecoration(
                                        color: appTheme.gray400,
                                        borderRadius:
                                            BorderRadius.circular(99.h)))),
                            CustomElevatedButton(
                                height: 48.v,
                                width: 188.h,
                                text: "EDIT",
                                buttonStyle: CustomButtonStyles.fillGray,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumOnPrimaryBold,
                                alignment: Alignment.bottomLeft)
                          ])),
                      CustomTextFormField(
                          controller: fullNameController,
                          margin: EdgeInsets.only(top: 54.v, right: 11.h),
                          hintText: "Full name",
                          hintStyle: theme.textTheme.bodyMedium!,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 10.v, 13.h, 5.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgEdit,
                                  height: 30.v,
                                  width: 25.h)),
                          suffixConstraints: BoxConstraints(maxHeight: 45.v),
                          contentPadding: EdgeInsets.only(
                              left: 11.h, top: 12.v, bottom: 12.v)),
                      CustomTextFormField(
                          controller: emailController,
                          margin: EdgeInsets.only(top: 12.v, right: 11.h),
                          hintText: "EMAIL",
                          hintStyle: theme.textTheme.bodyMedium!,
                          textInputType: TextInputType.emailAddress,
                          suffix: Container(
                              margin: EdgeInsets.fromLTRB(30.h, 8.v, 13.h, 7.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgEdit,
                                  height: 30.v,
                                  width: 25.h)),
                          suffixConstraints: BoxConstraints(maxHeight: 45.v),
                          contentPadding: EdgeInsets.only(
                              left: 10.h, top: 12.v, bottom: 12.v)),
                      CustomTextFormField(
                          controller: mobileNumberController,
                          margin: EdgeInsets.only(top: 8.v, right: 11.h),
                          hintText: "MOBILE NUMBER ",
                          hintStyle: theme.textTheme.bodyMedium!,
                          textInputType: TextInputType.phone,
                          suffix: Container(
                              margin: EdgeInsets.fromLTRB(30.h, 8.v, 13.h, 7.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgEdit,
                                  height: 30.v,
                                  width: 25.h)),
                          suffixConstraints: BoxConstraints(maxHeight: 45.v),
                          contentPadding: EdgeInsets.only(
                              left: 11.h, top: 12.v, bottom: 12.v)),
                      CustomTextFormField(
                          controller: editController,
                          margin: EdgeInsets.only(top: 12.v, right: 11.h),
                          hintText: "Delivery Preferences ",
                          hintStyle: theme.textTheme.bodyMedium!,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin: EdgeInsets.fromLTRB(30.h, 8.v, 13.h, 7.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgEdit,
                                  height: 30.v,
                                  width: 25.h)),
                          suffixConstraints: BoxConstraints(maxHeight: 45.v),
                          contentPadding: EdgeInsets.only(
                              left: 9.h, top: 12.v, bottom: 12.v)),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, top: 36.v, right: 23.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomElevatedButton(
                                    height: 33.v,
                                    width: 99.h,
                                    text: "ORDERS",
                                    buttonStyle:
                                        CustomButtonStyles.fillBlueGrayTL8,
                                    buttonTextStyle: CustomTextStyles
                                        .labelLargeOnPrimaryBold),
                                CustomElevatedButton(
                                    height: 33.v,
                                    width: 99.h,
                                    text: "HELP",
                                    buttonStyle:
                                        CustomButtonStyles.fillBlueGrayTL8,
                                    buttonTextStyle: CustomTextStyles
                                        .labelLargeOnPrimaryBold)
                              ])),
                      CustomElevatedButton(
                          text: "Save Changes",
                          margin: EdgeInsets.only(
                              left: 14.h, top: 54.v, right: 23.h),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: theme.textTheme.bodyLarge!,
                          onTap: () {
                            onTapSavechanges(context);
                          })
                    ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenContainerPage;
      case BottomBarEnum.Products:
        return "/";
      case BottomBarEnum.Wallet:
        return "/";
      case BottomBarEnum.Reffer:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenContainerPage:
        return HomeScreenContainerPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the homeScreenContainer1Screen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreenContainer1Screen.
  onTapHomeone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainer1Screen);
  }

  /// Navigates to the cartScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cartScreen.
  onTapFastcartone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }

  /// Navigates to the splashScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the splashScreen.
  onTapSavechanges(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreen);
  }
}
