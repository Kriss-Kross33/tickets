import 'package:flutter/material.dart';

class RoundDonutContainer extends StatelessWidget {
  final Color? color;
  const RoundDonutContainer({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.5,
          color: color == null ? Colors.white : const Color(0xFFBACCF7),
        ),
      ),
    );
  }
}
