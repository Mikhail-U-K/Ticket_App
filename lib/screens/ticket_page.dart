import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_application/app_hotel_list.dart';
import 'package:ticket_application/images/images.dart';
import 'package:ticket_application/screens/widgets/ticket.dart';
import 'package:ticket_application/screens/widgets/utils.dart';
import 'package:ticket_application/styling/app_layout.dart';
import 'package:ticket_application/styling/app_styles.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayOut.getHeight(20, context),
              vertical: AppLayOut.getHeight(20, context),
            ),
            children: [
              SizedBox(
                height: AppLayOut.getHeight(40, context),
              ),
              Text(
                'Tickets',
                style: Styles.headLineStyle.copyWith(fontSize: 35),
              ),
              SizedBox(
                height: AppLayOut.getHeight(15, context),
              ),
              const RoundedTwoTextContainer(
                leftText: 'Upcomig',
                rightText: 'Previous',
              ),
              SizedBox(
                height: AppLayOut.getHeight(15, context),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TicketWidget(
                    ticket: tickets.first,
                    isColor: true,
                  ),
                  const SizedBox(height: 1),
                  const TicketPart(
                      leftTextUp: 'Flutter Dash',
                      leftTextDown: 'Passenger',
                      rightTextUp: '5221 478566',
                      rightTextDown: 'Passport'),
                  const SizedBox(height: 1),
                  const TicketPart(
                      leftTextUp: '0055 444 77147',
                      leftTextDown: 'Number of E-ticket',
                      rightTextUp: 'B2G28S',
                      rightTextDown: 'Booking'),
                  const SizedBox(height: 1),
                  const TicketPart(
                      leftTextUp: ' *** 2453',
                      leftTextDown: 'Payment method',
                      rightTextUp: '\$249.99',
                      rightTextDown: 'Price',
                      isImage: true),
                  const SizedBox(height: 1),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 26.5),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayOut.getHeight(15, context),
                        vertical: AppLayOut.getHeight(20, context)),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          AppLayOut.getHeight(15, context)),
                      child: BarcodeWidget(
                        data: 'assfsfsewerwerwqrwerwewerwersdfsdfd',
                        barcode: Barcode.code128(),
                        drawText: false,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayOut.getHeight(20, context),
                  ),
                  TicketWidget(ticket: tickets.first),
                ],
              ),
            ],
          ),
          Positioned(
            left: AppLayOut.getHeight(22, context),
            top: AppLayOut.getHeight(265, context),
            child: const BlackCircle(),
          ),
          Positioned(
            right: AppLayOut.getHeight(35, context),
            top: AppLayOut.getHeight(265, context),
            child: const BlackCircle(),
          ),
        ],
      ),
    );
  }
}

class BlackCircle extends StatelessWidget {
  const BlackCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Styles.textColor, width: 2),
      ),
      child: CircleAvatar(
        maxRadius: 4,
        backgroundColor: Styles.textColor,
      ),
    );
  }
}
