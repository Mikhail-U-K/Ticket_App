import 'package:flutter/material.dart';
import 'package:ticket_application/screens/widgets/utils.dart';
import 'package:ticket_application/styling/app_layout.dart';
import 'package:ticket_application/styling/app_styles.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayOut.getWidth(20, context),
            vertical: AppLayOut.getHeight(20, context)),
        children: [
          SizedBox(height: AppLayOut.getHeight(40, context)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SquaredPlane(width: 75, height: 75),
              SizedBox(width: AppLayOut.getWidth(10, context)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle,
                  ),
                  Text(
                    'New-York',
                    style: Styles.headLineStyle4,
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            Icons.shield_sharp,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        SizedBox(width: AppLayOut.getWidth(3, context)),
                        const Text(
                          'Premium status',
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: AppLayOut.getHeight(30, context),
          ),
          const RewardWidget(),
        ],
      ),
    );
  }
}

class RewardWidget extends StatelessWidget {
  const RewardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF526799),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("You've got a new reward", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
              Text("You have 150 flights in a year", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
            ],
          ),
        ],
      ),
    );
  }
}
