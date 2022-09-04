import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/models/ticket_list.dart';
import 'package:tickets/src/utils/utils.dart';
import 'package:tickets/src/widgets/common/widgets.dart';

class HomeMidSection extends StatelessWidget {
  const HomeMidSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Flights',
                style: AppStyles.headLineStyle2,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'View all',
                  style: AppStyles.textStyle
                      .copyWith(color: AppStyles.primaryColor),
                ),
              ),
            ],
          ),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: ticketList
                  .map((ticket) => TicketWidget(ticket: ticket))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
