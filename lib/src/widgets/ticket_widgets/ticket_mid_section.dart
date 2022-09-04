import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/models/ticket_list.dart';
import 'package:tickets/src/widgets/ticket_widgets/widgets.dart';

class TicketMidSection extends StatelessWidget {
  const TicketMidSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(20),
        TicketInfoWidget(
          ticket: ticketList.first,
        ),
      ],
    );
  }
}
