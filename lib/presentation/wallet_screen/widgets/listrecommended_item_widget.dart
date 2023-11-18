import 'package:flutter/material.dart';
import 'package:talenthub/core/app_export.dart';

// ignore: must_be_immutable
class ListrecommendedItemWidget extends StatelessWidget {
  const ListrecommendedItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            "Welcome 30",
            style: CustomTextStyles.labelLargeBlack90012,
          ),
        ),
        Text(
          "                                                           Apply",
          style: CustomTextStyles.labelLargePrimary,
        ),
      ],
    );
  }
}
