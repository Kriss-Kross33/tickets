import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/utils/utils.dart';
import 'package:tickets/src/widgets/search_widgets/widgets.dart';

class TopSection extends StatefulWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(40),
        Text(
          'What are \nyou looking for?',
          style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
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
                  title: 'Airline Tickets',
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
                  title: 'Hotels',
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
        const Gap(25),
        const CustomTextField(
          hintText: 'Departure',
          icon: Icons.flight_takeoff_outlined,
        ),
        const Gap(20),
        const CustomTextField(
          hintText: 'Arrival',
          icon: Icons.flight_land_outlined,
        ),
        const Gap(25),
        const FindTicketsButton(),
      ],
    );
  }
}
