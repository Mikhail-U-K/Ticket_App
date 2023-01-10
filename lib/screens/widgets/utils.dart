import 'package:flutter/material.dart';
import 'package:ticket_application/images/images.dart';
import 'package:ticket_application/styling/app_layout.dart';
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

class RoundedTwoTextContainer extends StatelessWidget {
  const RoundedTwoTextContainer(
      {super.key, required this.leftText, required this.rightText});
  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius:
              BorderRadius.circular(AppLayOut.getHeight(50, context))),
      child: Row(
        children: [
          Container(
            padding:
                EdgeInsets.symmetric(vertical: AppLayOut.getHeight(7, context)),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(AppLayOut.getHeight(50, context)),
              ),
            ),
            width: size.width * 0.44,
            child: Text(
              leftText,
              style: Styles.headLineStyle3.copyWith(fontSize: 15),
            ),
          ),
          Container(
            padding:
                EdgeInsets.symmetric(vertical: AppLayOut.getHeight(7, context)),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(AppLayOut.getHeight(50, context)),
              ),
            ),
            width: size.width * 0.44,
            child: Text(
              rightText,
              style: Styles.headLineStyle3.copyWith(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}

class RowOfTiars extends StatelessWidget {
  const RowOfTiars({super.key, this.isColor});
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            (constraints.constrainWidth() / 15).floor(),
            (index) => Text(
              '-',
              style: TextStyle(
                  color: isColor == null ? Colors.white : Colors.grey.shade500),
            ),
          ),
        );
      },
    );
  }
}

class SquaredPlane extends StatelessWidget {
  const SquaredPlane({super.key, required this.width, required this.height});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        image: DecorationImage(
          // fit: BoxFit.fitHeight,
          image: AssetImage(ImagePng.plane),
        ),
      ),
    );
  }
}
