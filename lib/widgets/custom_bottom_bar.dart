import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      title: "Home",
      type: BottomBarEnum.Home,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgProduct,
      activeIcon: ImageConstant.imgProduct,
      title: "Products",
      type: BottomBarEnum.Products,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgWallet,
      activeIcon: ImageConstant.imgWallet,
      title: "Wallet",
      type: BottomBarEnum.Wallet,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSharerounded,
      activeIcon: ImageConstant.imgSharerounded,
      title: "Reffer",
      type: BottomBarEnum.Reffer,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMenu,
      activeIcon: ImageConstant.imgMenu,
      title: "More",
      type: BottomBarEnum.More,
      isPng: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.v,
      decoration: BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(5.h),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].isPng == true
                      ? null
                      : bottomMenuList[index].icon,
                  imagePath: bottomMenuList[index].isPng == true
                      ? bottomMenuList[index].icon
                      : null,
                  height: 25.v,
                  width: 25.h,
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: appTheme.blueGray900,
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].isPng == true
                      ? null
                      : bottomMenuList[index].activeIcon,
                  imagePath: bottomMenuList[index].isPng == true
                      ? bottomMenuList[index].activeIcon
                      : null,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: appTheme.blueGray900,
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Products,
  Wallet,
  Reffer,
  More,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isPng = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
