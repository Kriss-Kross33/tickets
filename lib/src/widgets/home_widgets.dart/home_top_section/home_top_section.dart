import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/utils.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: AppStyles.headLineStyle3,
                ),
                const Gap(5),
                Text(
                  'Book Tickets',
                  style: AppStyles.headLineStyle1,
                )
              ],
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/img_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        const Gap(25),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          height: 50,
          decoration: BoxDecoration(
              color: const Color(0xfff4f6fd),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Padding(
                padding: EdgeInsets.only(right: 4.0),
                child: Icon(
                  FluentSystemIcons.ic_fluent_search_regular,
                  color: Color(0xFFBFC205),
                  size: 22,
                ),
              ),
              prefixIconConstraints: const BoxConstraints(maxWidth: 40),
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: 'Search',
              hintStyle: AppStyles.headLineStyle4,
            ),
          ),
        ),
      ],
    );
  }
}
