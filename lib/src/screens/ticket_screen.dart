import 'package:flutter/material.dart';

import '../widgets/ticket_widgets/widgets.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            ListView(
              children: const [
                TicketTopSection(),
                TicketMidSection(),
              ],
            ),
            const Positioned(
              top: 290,
              left: 10,
              child: BullsEyeWidget(),
            ),
            const Positioned(
              top: 290,
              right: 10,
              child: BullsEyeWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
