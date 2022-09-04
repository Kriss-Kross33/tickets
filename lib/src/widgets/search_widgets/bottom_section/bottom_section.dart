import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/utils/utils.dart';
import 'package:tickets/src/widgets/common/widgets.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Column(
      children: [
        const Gap(40),
        const SectionHeader(headerTitle: 'Upcoming Flights'),
        const Gap(20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 425,
              width: size.width * 0.42,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]),
              child: Column(
                children: [
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/sit.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Text(
                    '20% discount on business class tickets from Airline on International',
                    style: AppStyles.headLineStyle2,
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      width: size.width * 0.44,
                      height: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF3AB8B8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Discount\nfor survey',
                            style: AppStyles.headLineStyle2.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(10),
                          Text(
                            'Take a survey about our services and get discount',
                            style: AppStyles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -40,
                      right: -45,
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 18,
                            color: const Color(0xFF189999),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(15),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  width: size.width * 0.44,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFEC6545),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Take love',
                        style: AppStyles.headLineStyle2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Gap(10),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 38),
                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 50),
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 38),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
