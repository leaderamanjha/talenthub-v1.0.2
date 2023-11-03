import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/widgets/app_bar/appbar_image.dart';
import 'package:talenthub/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:talenthub/widgets/app_bar/custom_app_bar.dart';

class TCReferalScreen extends StatelessWidget {
  const TCReferalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 57.h,
          leading: AppbarImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(
              left: 30.h,
              top: 15.v,
              bottom: 11.v,
            
            ),
          ),
          title: AppbarSubtitle5(
            text: "Orgaaa Referral Program",
            margin: EdgeInsets.only(left: 1.h),
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 7.v),
            child: Container(
              margin: EdgeInsets.only(
                left: 23.h,
                right: 23.h,
                bottom: 5.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder23,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 18.v),
                  SizedBox(
                    width: 314.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Eligibility \n",
                            style:
                                CustomTextStyles.labelLargeBlack900SemiBold12,
                          ),
                          TextSpan(
                            text:
                                "The Orgaaa Referral Program is open to all active customers who have made a purchase within the last three months.\n",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: "Referral Link",
                            style:
                                CustomTextStyles.labelLargeBlack900SemiBold12,
                          ),
                          TextSpan(
                            text: "",
                            style: CustomTextStyles.labelLargeBlack900Bold,
                          ),
                          TextSpan(
                            text:
                                "Referrers will receive a unique referral link that they can share with friends and family.\nReferred individuals must use the provided link to be eligible for rewards.\n",
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.67,
                            ),
                          ),
                          TextSpan(
                            text: "Rewards\n",
                            style:
                                CustomTextStyles.labelLargeBlack900SemiBold12,
                          ),
                          TextSpan(
                            text:
                                "Referrers will receive a [Specify Reward, e.g., discount, free milk, gift card] for each successful referral.\nThe referred friend will also receive a [Specify Friend's Reward, e.g., discount, free trial] as a welcome bonus.\n",
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.67,
                            ),
                          ),
                          TextSpan(
                            text: "Qualifying Referral\n",
                            style:
                                CustomTextStyles.labelLargeBlack900SemiBold12,
                          ),
                          TextSpan(
                            text:
                                "A qualifying referral is defined as a successful sign-up by a referred friend who completes their first purchase on the Orgaaa website.\n",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: "Payouts\n",
                            style:
                                CustomTextStyles.labelLargeBlack900SemiBold12,
                          ),
                          TextSpan(
                            text:
                                "Rewards will be issued in the form of [Specify Reward Format, e.g., discount code, store credit].\nRewards are not transferable and have no cash value.\n",
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.67,
                            ),
                          ),
                          TextSpan(
                            text: "Limits\n",
                            style:
                                CustomTextStyles.labelLargeBlack900SemiBold12,
                          ),
                          TextSpan(
                            text:
                                "There is no limit to the number of referrals a customer can make.\nOrgaaa reserves the right to limit the number of referrals if fraudulent activity is suspected.\n",
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.67,
                            ),
                          ),
                          TextSpan(
                            text: "Fraudulent Activity\n",
                            style:
                                CustomTextStyles.labelLargeBlack900SemiBold12,
                          ),
                          TextSpan(
                            text:
                                "Orgaaa may withhold rewards or terminate the Referral Program for customers engaged in fraudulent activity.\nFraudulent activity includes, but is not limited to, creating multiple fake accounts, self-referrals, and spamming.\n",
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.67,
                            ),
                          ),
                          TextSpan(
                            text: "Expiration\n",
                            style:
                                CustomTextStyles.labelLargeBlack900SemiBold12,
                          ),
                          TextSpan(
                            text:
                                "Referral rewards may have an expiration date. Customers are encouraged to use their rewards within the specified timeframe.\n",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text:
                                "Modification and Termination\nOrgaaa reserves the right to modify or terminate the Referral Program at any time without prior notice.\nIn the event of program termination, all unredeemed rewards will be forfeited.",
                            style: CustomTextStyles.labelLargeBlack900SemiBold12
                                .copyWith(
                              height: 1.67,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
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
