import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/add_vacation_one_screen/add_vacation_one_screen.dart';
import 'package:talenthub/presentation/add_vacation_screen/add_vacation_screen.dart';
import 'package:talenthub/presentation/application_guide_screen/application_guide_screen.dart';
import 'package:talenthub/presentation/cart_screen/cart_screen.dart';
import 'package:talenthub/presentation/help_screen/help_screen.dart';
import 'package:talenthub/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:talenthub/presentation/milk_screen/milk_screen.dart';
import 'package:talenthub/presentation/more_screen/more_screen.dart';
import 'package:talenthub/presentation/offers_screen/offers_screen.dart';
import 'package:talenthub/presentation/order_history_screen/order_history_screen.dart';
import 'package:talenthub/presentation/place_an_order_screen/place_an_order_screen.dart';
import 'package:talenthub/presentation/product_screen/product1.dart';
import 'package:talenthub/presentation/product_screen/product2.dart';
import 'package:talenthub/presentation/product_screen/product3.dart';
import 'package:talenthub/presentation/product_screen/product_screen.dart';
import 'package:talenthub/presentation/recharge_my_wallet_screen/recharge_my_wallet_screen.dart';
import 'package:talenthub/presentation/referal_screen/referal_screen.dart';
import 'package:talenthub/presentation/subscription_screen/subscription_screen.dart';
import 'package:talenthub/presentation/t_c_referal_screen/t_c_referal_screen.dart';
import 'package:talenthub/presentation/trasaction_history_screen/trasaction_history_screen.dart';
import 'package:talenthub/presentation/vacations_screen/vacations_screen.dart';
import 'package:talenthub/presentation/view_current_offers_screen/view_current_offers_screen.dart';
import 'package:talenthub/presentation/view_my_bill_screen/view_my_bill_screen.dart';
import 'package:talenthub/presentation/view_my_payment_history_screen/view_my_payment_history_screen.dart';
import 'package:talenthub/presentation/wallet_screen/wallet_screen.dart';
import 'package:talenthub/presentation/welcome_screen/welcome_screen.dart';
import 'package:talenthub/widgets/custom_bottom_bar.dart';
// ignore: duplicate_import
import 'package:talenthub/presentation/milk_screen/milk_screen.dart';

// ignore_for_file: must_be_immutable
class HomeScreenContainer1Screen extends StatelessWidget {
  HomeScreenContainer1Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray20001,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeScreenContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
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
        return AppRoutes.milkScreen;
      case BottomBarEnum.Wallet:
        return AppRoutes.walletScreen;
      case BottomBarEnum.Reffer:
        return AppRoutes.referalScreen;
      case BottomBarEnum.More:
        return AppRoutes.moreScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenContainerPage:
        return HomeScreenContainerPage();
      case AppRoutes.milkScreen:
        return MilkScreen();
      case AppRoutes.walletScreen:
        return WalletScreen();
      case AppRoutes.walletScreen:
        return WalletScreen();
      case AppRoutes.referalScreen:
        return ReferalScreen();
      case AppRoutes.tCReferalScreen:
        return TCReferalScreen();
      case AppRoutes.moreScreen:
        return MoreScreen();
      case AppRoutes.offersScreen:
        return OffersScreen();
      case AppRoutes.subscriptionScreen:
        return SubscriptionScreen();
      case AppRoutes.vacationsScreen:
        return VacationsScreen();
      case AppRoutes.orderHistoryScreen:
        return OrderHistoryScreen();
      case AppRoutes.trasactionHistoryScreen:
        return TrasactionHistoryScreen();
      case AppRoutes.helpScreen:
        return HelpScreen();
      case AppRoutes.welcomeScreen:
        return WelcomeScreen();
      case AppRoutes.cartScreen:
        return CartScreen();
      case AppRoutes.productScreen:
        return ProductScreen();
      case AppRoutes.addVacationScreen:
        return AddVacationScreen();
      case AppRoutes.product1:
        return Product1();
      case AppRoutes.product2:
        return Product2();
      case AppRoutes.product3:
        return Product3();
      case AppRoutes.applicationGuideScreen:
        return ApplicationGuideScreen();
      case AppRoutes.placeAnOrderScreen:
        return PlaceAnOrderScreen();
      case AppRoutes.addVacationOneScreen:
        return AddVacationOneScreen();
      case AppRoutes.rechargeMyWalletScreen:
        return RechargeMyWalletScreen();
      case AppRoutes.viewMyPaymentHistoryScreen:
        return ViewMyPaymentHistoryScreen();
      case AppRoutes.viewMyBillScreen:
        return ViewMyBillScreen();
      case AppRoutes.viewCurrentOffersScreen:
        return ViewCurrentOffersScreen();
      default:
        return DefaultWidget();
    }
  }
}
