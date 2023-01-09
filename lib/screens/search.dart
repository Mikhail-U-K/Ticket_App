import 'package:flutter/material.dart';
import 'package:ticket_application/images/images.dart';
import 'package:ticket_application/screens/widgets/utils.dart';
import 'package:ticket_application/styling/app_layout.dart';
import 'package:ticket_application/styling/app_styles.dart';

class SearchSrceen extends StatelessWidget {
  const SearchSrceen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayOut.getWidth(20, context),
          vertical: AppLayOut.getHeight(20, context),
        ),
        children: [
          SizedBox(
            height: AppLayOut.getHeight(40, context),
          ),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle.copyWith(fontSize: 35),
          ),
          SizedBox(
            height: AppLayOut.getHeight(20, context),
          ),
          Container(
            padding: const EdgeInsets.all(3.5),
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius:
                    BorderRadius.circular(AppLayOut.getHeight(50, context))),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayOut.getHeight(7, context)),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayOut.getHeight(50, context)),
                    ),
                  ),
                  width: size.width * 0.44,
                  child: Text(
                    'Airline Tickets',
                    style: Styles.headLineStyle3.copyWith(fontSize: 15),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayOut.getHeight(7, context)),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayOut.getHeight(50, context)),
                    ),
                  ),
                  width: size.width * 0.44,
                  child: Text(
                    'Hotels',
                    style: Styles.headLineStyle3.copyWith(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppLayOut.getHeight(20, context),
          ),
          const LongRoundContainer(
              text: 'Depature', icon: Icons.flight_takeoff_outlined),
          SizedBox(
            height: AppLayOut.getHeight(20, context),
          ),
          const LongRoundContainer(
              text: 'Arrival', icon: Icons.flight_land_outlined),
          SizedBox(
            height: AppLayOut.getHeight(25, context),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade700,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Find Tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppLayOut.getHeight(40, context),
          ),
          const FlightTextWidget(
            bigText: 'Upcomming Flight',
            smallText: 'View All',
          ),
          SizedBox(
            height: AppLayOut.getHeight(20, context),
          ),
          const ThreeRoundedContainers(),
        ],
      ),
    );
  }
}

class LongRoundContainer extends StatelessWidget {
  const LongRoundContainer({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}

class ThreeRoundedContainers extends StatelessWidget {
  const ThreeRoundedContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        LongContainerWithPicture(),
        TwoRoundContainers(),
      ],
    );
  }
}

class LongContainerWithPicture extends StatelessWidget {
  const LongContainerWithPicture({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Container(
      height: AppLayOut.getHeight(350, context),
      width: size.width * 0.42,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            height: AppLayOut.getHeight(210, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImagePng.planeSeats),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "20% discount on the early booking of this flight. Don't miss this chance.",
              style: Styles.headLineStyle2,
            ),
          ),
        ],
      ),
    );
  }
}

class TwoRoundContainers extends StatelessWidget {
  const TwoRoundContainers({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Column(
      children: [
        Container(
          width: size.width * 0.44,
          height: AppLayOut.getHeight(174, context),
          decoration: BoxDecoration(
            color: const Color(0xFF3AB8B8),
            borderRadius:
                BorderRadius.circular(AppLayOut.getHeight(15, context)),
          ),
          padding: EdgeInsets.symmetric(
              vertical: AppLayOut.getHeight(15, context),
              horizontal: AppLayOut.getHeight(15, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discount\nfor survey',
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              ),
              SizedBox(
                height: AppLayOut.getHeight(10, context),
              ),
              Text(
                'Discount\nfor survey',
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
