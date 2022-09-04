import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/utils/utils.dart';

class HotelWidget extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelWidget({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      margin: const EdgeInsets.only(right: 18, top: 5),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 14.0,
          right: 14,
          top: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                image: DecorationImage(
                  image: AssetImage(hotel['image']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(10),
            Text(
              hotel['place'],
              style: AppStyles.headLineStyle2.copyWith(
                color: AppStyles.kakiColor,
              ),
            ),
            const Gap(5),
            Text(
              hotel['destination'],
              style: AppStyles.headLineStyle3.copyWith(
                color: Colors.white,
              ),
            ),
            const Gap(8),
            Text(
              '\$${hotel['price']}/night',
              style: AppStyles.headLineStyle1.copyWith(
                color: AppStyles.kakiColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
