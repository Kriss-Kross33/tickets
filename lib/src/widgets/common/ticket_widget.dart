import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/utils/utils.dart';

import 'widgets.dart';

class TicketWidget extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const TicketWidget({
    super.key,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.8,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: 80,
              width: size.width,
              decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      const RoundDonutContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            const DashDividerWidget(
                              color: Colors.white,
                            ),
                            // SizedBox(
                            //   height: 23,
                            //   child: LayoutBuilder(
                            //     builder: (context, constraints) {
                            //       return Flex(
                            //         direction: Axis.horizontal,
                            //         mainAxisAlignment:
                            //             MainAxisAlignment.spaceBetween,
                            //         children: List.generate(
                            //           (constraints.constrainWidth() / 6)
                            //               .floor(),
                            //           (index) => Container(
                            //             height: 1,
                            //             width: 3,
                            //             decoration: const BoxDecoration(
                            //               color: Colors.white,
                            //             ),
                            //           ),
                            //         ),
                            //       );
                            //     },
                            //   ),
                            // ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_sharp,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const RoundDonutContainer(),
                      const Expanded(child: SizedBox()),
                      Text(
                        ticket['to']['code'],
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket['from']['name'],
                        style: AppStyles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: AppStyles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        ticket['to']['name'],
                        style: AppStyles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppStyles.orangeColor,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 20,
                      width: 10,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 23,
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                            (constraints.constrainWidth() / 14).floor(),
                            (index) => Container(
                              height: 1,
                              width: 5,
                              color: Colors.white,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 20,
                      width: 10,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              height: 80,
              width: size.width,
              decoration: BoxDecoration(
                color: AppStyles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket['date'],
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Gap(3),
                      Text(
                        'Date',
                        style: AppStyles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        ticket['departure_time'],
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Gap(3),
                      Text(
                        'Departure time',
                        style: AppStyles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${ticket['number']}',
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Gap(3),
                      Text(
                        'Number',
                        style: AppStyles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
