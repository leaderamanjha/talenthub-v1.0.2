import 'package:flutter/material.dart';
import 'package:talenthub/widgets/custom_elevated_button.dart';

class IncrementDecrementButton extends StatelessWidget {
  final int value;
  final ValueChanged<int> onChanged;

  IncrementDecrementButton({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomElevatedButton(
          text: '-',
          onTap: () {
            onChanged(value - 1);
          },
        ),
        SizedBox(width: 16.0), // Add spacing between the buttons
        CustomElevatedButton(
          text: '+',
          onTap: () {
            onChanged(value + 1);
          },
        ),
      ],
    );
  }
}
