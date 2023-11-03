import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle10 extends StatelessWidget {
  AppbarSubtitle10({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.labelMediumRed500.copyWith(
            color: appTheme.red500,
          ),
        ),
      ),
    );
  }
}
