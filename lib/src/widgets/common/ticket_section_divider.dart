import 'package:flutter/material.dart';

class TicketSectionDivider extends StatelessWidget {
  final Color? color;
  const TicketSectionDivider({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23,
      child: LayoutBuilder(builder: (context, constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / 14).floor(),
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
