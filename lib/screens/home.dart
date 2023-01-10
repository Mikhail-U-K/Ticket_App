import 'package:flutter/material.dart';
import 'package:ticket_application/app_hotel_list.dart';
import 'package:ticket_application/screens/widgets/hotel_widget.dart';
import 'package:ticket_application/screens/widgets/ticket.dart';
import 'package:ticket_application/screens/widgets/utils.dart';
import 'package:ticket_application/styling/app_styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle,
                        ),
                      ],
                    ),
                    const SquaredPlane(width: 50, height: 50),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Color(0xFFBFC205),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            labelText: 'Search',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const FlightTextWidget(
                  bigText: 'Upcomming Flight',
                  smallText: 'View All',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: tickets
                  .map(
                    (ticket) => TicketWidget(ticket: ticket),
                  )
                  .toList(),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const FlightTextWidget(
              bigText: 'Hotels',
              smallText: 'View All',
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  hotelsList.map((hotel) => HotelCard(hotel: hotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
