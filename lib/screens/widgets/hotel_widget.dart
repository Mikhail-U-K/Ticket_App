import 'package:flutter/material.dart';
import 'package:ticket_application/images/images.dart';
import 'package:ticket_application/styling/app_layout.dart';
import 'package:ticket_application/styling/app_styles.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Container(
      width: size.width * 0.65,
      height: 350,
      margin: const EdgeInsets.only(top: 5, right: 17),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 17,
      ),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  ImagePng.hotelOne,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Open Space',
            style: Styles.headLineStyle2.copyWith(
              color: Styles.kakiColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'London',
            style: Styles.headLineStyle3.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
           Text(
            '\$40/night',
            style: Styles.headLineStyle.copyWith(
              color: Styles.kakiColor,
            ),
          ),
        ],
      ),
    );
  }
}
