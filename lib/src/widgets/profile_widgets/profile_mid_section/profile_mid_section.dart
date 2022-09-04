import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/utils/utils.dart';
import 'package:tickets/src/widgets/common/widgets.dart';
import 'package:tickets/src/widgets/profile_widgets/widgets.dart';

class ProfileMidSection extends StatelessWidget {
  const ProfileMidSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(12),
        Divider(
          color: Colors.grey.shade300,
        ),
        const Gap(12),
        const FlightInfoWidget(),
        const Gap(25),
        Text(
          'Accumulated miles',
          style: AppStyles.headLineStyle2,
        ),
        const Gap(45),
        Center(
          child: Text(
            '192802',
            style: AppStyles.headLineStyle1.copyWith(
              fontSize: 45,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Gap(25),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Miles accrued',
                  style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                ),
                Text(
                  '4 Sep 2022',
                  style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                ),
              ],
            ),
            const Gap(8),
            Divider(
              color: Colors.grey.shade300,
            ),
            const Gap(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '23 042',
                  style: AppStyles.headLineStyle3.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Airline CO',
                  style: AppStyles.headLineStyle3.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Miles',
                  style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                ),
                Text(
                  'Received from',
                  style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                ),
              ],
            ),
            const Gap(4),
            DashDividerWidget(
              color: Colors.grey.shade300,
              divisor: 16,
            ),
            const Gap(4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '24',
                  style: AppStyles.headLineStyle3.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'McDonal\'s',
                  style: AppStyles.headLineStyle3.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Miles',
                  style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                ),
                Text(
                  'Received from',
                  style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                ),
              ],
            ),
            const Gap(4),
            DashDividerWidget(
              color: Colors.grey.shade300,
              divisor: 16,
            ),
            const Gap(4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '52 340',
                  style: AppStyles.headLineStyle3.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Exuma',
                  style: AppStyles.headLineStyle3.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Miles',
                  style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                ),
                Text(
                  'Received from',
                  style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
        const Gap(20),
        Center(
          child: InkWell(
            onTap: () {},
            child: Text(
              'How to get more miles',
              style: AppStyles.textStyle.copyWith(
                color: AppStyles.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
