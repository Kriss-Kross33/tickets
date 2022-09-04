import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/utils/utils.dart';

class ProfileTopSection extends StatelessWidget {
  const ProfileTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 86,
              width: 86,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/img_1.png'),
                ),
              ),
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book Tickets',
                  style: AppStyles.headLineStyle1,
                ),
                Text(
                  'Book Tickets',
                  style: AppStyles.textStyle.copyWith(
                    fontSize: 14,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xFFFEF4F3),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF526799)),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(5),
                      Text(
                        'Premium status',
                        style: AppStyles.textStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF526799),
                          fontSize: 14,
                        ),
                      ),
                      const Gap(5),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Text(
                'Edit',
                style:
                    AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
              ),
            ),
          ],
        )
      ],
    );
  }
}
