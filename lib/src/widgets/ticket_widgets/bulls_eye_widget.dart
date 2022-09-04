import 'package:flutter/material.dart';
import 'package:tickets/src/utils/utils.dart';

class BullsEyeWidget extends StatelessWidget {
  const BullsEyeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppStyles.textColor, width: 2),
      ),
      child: CircleAvatar(
        maxRadius: 4,
        backgroundColor: AppStyles.textColor,
      ),
    );
  }
}
