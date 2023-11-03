import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';
import 'package:talenthub/presentation/help_screen/help_screen.dart';
import 'package:talenthub/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:talenthub/presentation/milk_screen/milk_screen.dart';
import 'package:talenthub/presentation/more_screen/more_screen.dart';
import 'package:talenthub/presentation/offers_screen/offers_screen.dart';
import 'package:talenthub/presentation/order_history_screen/order_history_screen.dart';
import 'package:talenthub/presentation/referal_screen/referal_screen.dart';
import 'package:talenthub/presentation/subscription_screen/subscription_screen.dart';
import 'package:talenthub/presentation/t_c_referal_screen/t_c_referal_screen.dart';
import 'package:talenthub/presentation/trasaction_history_screen/trasaction_history_screen.dart';
import 'package:talenthub/presentation/vacations_screen/vacations_screen.dart';
import 'package:talenthub/presentation/wallet_screen/wallet_screen.dart';
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

      default:
        return DefaultWidget();
    }
  }
}
