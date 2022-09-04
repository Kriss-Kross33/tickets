import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/src/widgets/common/widgets.dart';

import '../../utils/utils.dart';

class TicketInfoWidget extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketInfoWidget({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            height: 80,
            width: size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
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
                      style: AppStyles.headLineStyle3,
                    ),
                    const Expanded(child: SizedBox()),
                    const RoundDonutContainer(
                      color: Color(0xFF8ACCF7),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          DashDividerWidget(
                            color: Colors.grey.shade200,
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
                          //           (constraints.constrainWidth() / 6).floor(),
                          //           (index) => Container(
                          //             height: 1,
                          //             width: 3,
                          //             decoration: BoxDecoration(
                          //               color: Colors.grey.shade300,
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
                                color: Color(0xFF8ACCF7),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const RoundDonutContainer(
                      color: Color(0xFF8ACCF7),
                    ),
                    const Expanded(child: SizedBox()),
                    Text(
                      ticket['to']['code'],
                      style: AppStyles.headLineStyle3,
                    ),
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ticket['from']['name'],
                        style: AppStyles.headLineStyle4),
                    Text(ticket['flying_time'],
                        style: AppStyles.headLineStyle3
                            .copyWith(fontWeight: FontWeight.w500)),
                    Text(ticket['to']['name'], style: AppStyles.headLineStyle4),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
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
                  child: DashDividerWidget(
                    color: Colors.grey.shade200,
                    divisor: 14,
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
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ticket['date'], style: AppStyles.headLineStyle3),
                    const Gap(5),
                    Text('Date', style: AppStyles.headLineStyle4),
                  ],
                ),
                Column(
                  children: [
                    Text(ticket['departure_time'],
                        style: AppStyles.headLineStyle3),
                    const Gap(5),
                    Text('Departure time', style: AppStyles.headLineStyle4),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('${ticket['number']}',
                        style: AppStyles.headLineStyle3),
                    const Gap(5),
                    Text('Number', style: AppStyles.headLineStyle4),
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey.shade200,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Flutter DB', style: AppStyles.headLineStyle3),
                        const Gap(5),
                        Text('Number', style: AppStyles.headLineStyle4),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('5221 478566', style: AppStyles.headLineStyle3),
                        const Gap(5),
                        Text('Number', style: AppStyles.headLineStyle4),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: DashDividerWidget(
              color: Colors.grey.shade200,
              divisor: 14,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('0055 444 77147', style: AppStyles.headLineStyle3),
                        const Gap(5),
                        Text('Number of E-ticket',
                            style: AppStyles.headLineStyle4),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('B2SG28', style: AppStyles.headLineStyle3),
                        const Gap(5),
                        Text('Booking code', style: AppStyles.headLineStyle4),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: DashDividerWidget(
              color: Colors.grey.shade200,
              divisor: 14,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 16,
                              width: 45,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/visa.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Text(' *** 2462', style: AppStyles.headLineStyle3),
                          ],
                        ),
                        const Gap(5),
                        Text('Payment method', style: AppStyles.headLineStyle4),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('\$249.99', style: AppStyles.headLineStyle3),
                        const Gap(5),
                        Text('Price', style: AppStyles.headLineStyle4),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BarcodeWidget(
                data: 'https:github.com/martinovovo',
                barcode: Barcode.code128(),
                drawText: false,
                width: double.infinity,
                height: 70,
              ),
            ),
          ),
          const Gap(20),
          TicketWidget(
            ticket: ticket,
          ),
        ],
      ),
    );
  }
}
