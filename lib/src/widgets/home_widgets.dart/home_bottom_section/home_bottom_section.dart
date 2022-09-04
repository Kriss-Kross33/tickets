import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/models/hotel_list.dart';
import 'package:tickets/src/widgets/common/widgets.dart';
import 'package:tickets/src/widgets/home_widgets.dart/widgets.dart';

class HomeBottomSection extends StatelessWidget {
  const HomeBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(15),
        const SectionHeader(
          headerTitle: 'Hotels',
        ),
        const Gap(20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            children: hotelList
                .map((hotel) => HotelWidget(
                      hotel: hotel,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
