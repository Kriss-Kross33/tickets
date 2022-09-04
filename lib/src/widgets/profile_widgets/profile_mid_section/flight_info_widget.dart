import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/utils/utils.dart';

class FlightInfoWidget extends StatelessWidget {
  const FlightInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          top: -36,
          right: -45,
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 20,
                color: const Color(0xFF264CD2),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 20,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                  color: AppStyles.primaryColor,
                  size: 25,
                ),
              ),
              const Gap(12),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You\'ve got a new award',
                    style: AppStyles.headLineStyle2.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'You have 150 flights in a year',
                    style: AppStyles.headLineStyle3.copyWith(
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
