import 'package:flutter/material.dart';
import 'package:talenthub/presentation/product_screen/product3.dart';
import 'package:talenthub/presentation/splash_screen/splash_screen.dart';
import 'package:talenthub/presentation/offers_screen/offers_screen.dart';
import 'package:talenthub/presentation/welcome_screen/welcome_screen.dart';
import 'package:talenthub/presentation/mobile_number_screen/mobile_number_screen.dart';
import 'package:talenthub/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:talenthub/presentation/vip_screen/vip_screen.dart';
import 'package:talenthub/presentation/home_screen_container1_screen/home_screen_container1_screen.dart';
import 'package:talenthub/presentation/milk_screen/milk_screen.dart';
import 'package:talenthub/presentation/subscription_screen/subscription_screen.dart';
import 'package:talenthub/presentation/vacations_screen/vacations_screen.dart';
import 'package:talenthub/presentation/order_history_screen/order_history_screen.dart';
import 'package:talenthub/presentation/trasaction_history_screen/trasaction_history_screen.dart';
import 'package:talenthub/presentation/referal_screen/referal_screen.dart';
import 'package:talenthub/presentation/t_c_referal_screen/t_c_referal_screen.dart';
import 'package:talenthub/presentation/help_screen/help_screen.dart';
import 'package:talenthub/presentation/product_screen/product_screen.dart';
import 'package:talenthub/presentation/cart_screen/cart_screen.dart';
import 'package:talenthub/presentation/add_vacation_screen/add_vacation_screen.dart';
import 'package:talenthub/presentation/after_adding_vacation_screen/after_adding_vacation_screen.dart';
import 'package:talenthub/presentation/edit_vacation_screen/edit_vacation_screen.dart';
import 'package:talenthub/presentation/personal_detail_container_screen/personal_detail_container_screen.dart';
import 'package:talenthub/presentation/wallet_screen/wallet_screen.dart';
import 'package:talenthub/presentation/more_screen/more_screen.dart';
import 'package:talenthub/presentation/application_guide_screen/application_guide_screen.dart';
import 'package:talenthub/presentation/place_an_order_screen/place_an_order_screen.dart';
import 'package:talenthub/presentation/add_vacation_one_screen/add_vacation_one_screen.dart';
import 'package:talenthub/presentation/view_current_offers_one_screen/view_current_offers_one_screen.dart';
import 'package:talenthub/presentation/recharge_my_wallet_screen/recharge_my_wallet_screen.dart';
import 'package:talenthub/presentation/view_my_payment_history_screen/view_my_payment_history_screen.dart';
import 'package:talenthub/presentation/view_my_bill_screen/view_my_bill_screen.dart';
import 'package:talenthub/presentation/view_current_offers_screen/view_current_offers_screen.dart';
import 'package:talenthub/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:talenthub/presentation/product_screen/product2.dart';
import 'package:talenthub/presentation/product_screen/product1.dart';
import 'package:talenthub/presentation/mobile_number_screen/otp_login_page.dart';
import 'package:talenthub/presentation/mobile_number_screen/otp_verify_page.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String offersScreen = '/offers_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String mobileNumberScreen = '/mobile_number_screen';

  static const String loginPage = '/mobile_number_screen/otp_login_page';
  static const String otpVerifyPage = '/mobile_number_screen/otp_verify_page';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String vipScreen = '/vip_screen';

  static const String homeScreenContainerPage = '/home_screen_container_page';

  static const String homeScreenContainer1Screen =
      '/home_screen_container1_screen';

  static const String milkScreen = '/milk_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String vacationsScreen = '/vacations_screen';

  static const String orderHistoryScreen = '/order_history_screen';

  static const String trasactionHistoryScreen = '/trasaction_history_screen';

  static const String referalScreen = '/referal_screen';

  static const String tCReferalScreen = '/t_c_referal_screen';

  static const String helpScreen = '/help_screen';

  static const String productScreen = '/product_screen';

  static const String cartScreen = '/cart_screen';

  static const String addVacationScreen = '/add_vacation_screen';

  static const String afterAddingVacationScreen =
      '/after_adding_vacation_screen';

  static const String editVacationScreen = '/edit_vacation_screen';

  static const String personalDetailContainerScreen =
      '/personal_detail_container_screen';

  static const String walletScreen = '/wallet_screen';
  static const String product1 = '/product_screen/product1';
  static const String product2 = '/product_screen/product2';
  static const String product3 = '/product_screen/product3';
  static const String moreScreen = '/more_screen';

  static const String applicationGuideScreen = '/application_guide_screen';

  static const String placeAnOrderScreen = '/place_an_order_screen';

  static const String addVacationOneScreen = '/add_vacation_one_screen';

  static const String viewCurrentOffersOneScreen =
      '/view_current_offers_one_screen';

  static const String rechargeMyWalletScreen = '/recharge_my_wallet_screen';

  static const String viewMyPaymentHistoryScreen =
      '/view_my_payment_history_screen';

  static const String viewMyBillScreen = '/view_my_bill_screen';

  static const String viewCurrentOffersScreen = '/view_current_offers_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    offersScreen: (context) => OffersScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    mobileNumberScreen: (context) => MobileNumberScreen(),
    loginPage: (context) => LoginPage(),
    otpVerifyPage: (context) => OTPVerifyPage(),
    otpVerificationScreen: (context) => OtpVerificationScreen(mobileNumber: 'number',),
    vipScreen: (context) => VipScreen(),
    homeScreenContainer1Screen: (context) => HomeScreenContainer1Screen(),
    milkScreen: (context) => MilkScreen(),
    subscriptionScreen: (context) => SubscriptionScreen(),
    vacationsScreen: (context) => VacationsScreen(),
    orderHistoryScreen: (context) => OrderHistoryScreen(),
    trasactionHistoryScreen: (context) => TrasactionHistoryScreen(),
    referalScreen: (context) => ReferalScreen(),
    tCReferalScreen: (context) => TCReferalScreen(),
    helpScreen: (context) => HelpScreen(),
    productScreen: (context) => ProductScreen(),
    cartScreen: (context) => CartScreen(),
    addVacationScreen: (context) => AddVacationScreen(),
    afterAddingVacationScreen: (context) => AfterAddingVacationScreen(),
    editVacationScreen: (context) => EditVacationScreen(),
    personalDetailContainerScreen: (context) => PersonalDetailContainerScreen(),
    walletScreen: (context) => WalletScreen(),
    product1: (context) => Product1(),
    product2: (context) => Product2(),
    product3: (context) => Product3(),
    moreScreen: (context) => MoreScreen(),
    applicationGuideScreen: (context) => ApplicationGuideScreen(),
    placeAnOrderScreen: (context) => PlaceAnOrderScreen(),
    addVacationOneScreen: (context) => AddVacationOneScreen(),
    viewCurrentOffersOneScreen: (context) => ViewCurrentOffersOneScreen(),
    rechargeMyWalletScreen: (context) => RechargeMyWalletScreen(),
    viewMyPaymentHistoryScreen: (context) => ViewMyPaymentHistoryScreen(),
    viewMyBillScreen: (context) => ViewMyBillScreen(),
    viewCurrentOffersScreen: (context) => ViewCurrentOffersScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
