import 'package:flutter/material.dart';
import 'package:tickets/src/utils/utils.dart';

class TabWidget extends StatelessWidget {
  final bool isSelected;
  final String title;
  final BorderRadius borderRadius;
  const TabWidget({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : const Color(0xFFF4F6FD),
        borderRadius: borderRadius,
      ),
      child: Center(
        child: Text(
          title,
          style: AppStyles.headLineStyle4,
        ),
      ),
    );
  }
}
