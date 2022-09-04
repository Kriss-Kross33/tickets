import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/utils/utils.dart';
import 'package:tickets/src/widgets/common/widgets.dart';

class TicketTopSection extends StatefulWidget {
  const TicketTopSection({Key? key}) : super(key: key);

  @override
  State<TicketTopSection> createState() => _TicketTopSectionState();
}

class _TicketTopSectionState extends State<TicketTopSection> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(40),
        Text(
          'Tickets',
          style: AppStyles.headLineStyle1,
        ),
        const Gap(20),
        Row(
          children: [
            Flexible(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: TabWidget(
                  title: 'Upcoming',
                  isSelected: isSelected,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
              ),
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: TabWidget(
                  title: 'Previous',
                  isSelected: !isSelected,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
