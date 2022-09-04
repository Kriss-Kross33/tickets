import 'package:flutter/material.dart';
import 'package:tickets/src/utils/utils.dart';

class SectionHeader extends StatelessWidget {
  final String headerTitle;
  const SectionHeader({
    Key? key,
    required this.headerTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerTitle,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'View all',
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
