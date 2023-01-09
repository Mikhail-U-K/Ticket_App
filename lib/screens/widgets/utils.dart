import 'package:flutter/material.dart';
import 'package:ticket_application/styling/app_styles.dart';

class FlightTextWidget extends StatelessWidget {
  const FlightTextWidget(
      {super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle3,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            smallText,
            style: Styles.headLineStyle4,
          ),
        ),
      ],
    );
  }
}
