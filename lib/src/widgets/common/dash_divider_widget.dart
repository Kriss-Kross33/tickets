import 'package:flutter/material.dart';

class DashDividerWidget extends StatelessWidget {
  final Color? color;
  final int? divisor;
  const DashDividerWidget({
    Key? key,
    this.color,
    this.divisor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23,
      child: LayoutBuilder(builder: (context, constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / (divisor ?? 6)).floor(),
            (index) => Container(
              height: 1,
              width: 5,
              color: color ?? Colors.white,
            ),
          ),
        );
      }),
    );
  }
}
