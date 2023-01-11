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

class QuaterCircleWidget extends StatelessWidget {
  const QuaterCircleWidget({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -45,
      top: -40,
      child: Container(
        padding: EdgeInsets.all(AppLayOut.getHeight(30, context)),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 18, color: color),
          color: Colors.transparent,
        ),
      ),
    );
  }
}

class TicketPart extends StatelessWidget {
  const TicketPart(
      {super.key,
      required this.leftTextUp,
      required this.leftTextDown,
      required this.rightTextUp,
      required this.rightTextDown,
      this.isImage,
      this.isColor});
  final String leftTextUp;
  final String leftTextDown;
  final String rightTextUp;
  final String rightTextDown;
  final bool? isImage;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayOut.getWidth(20, context),
        vertical: AppLayOut.getHeight(20, context),
      ),
      margin:
          isColor == null ? const EdgeInsets.only(left: 10, right: 26.5) : null,
      color: isColor == null ? Colors.white : null,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isImage == null
                      ? Text(
                          leftTextUp,
                          style: Styles.headLineStyle3.copyWith(fontSize: 17),
                        )
                      : Row(
                          children: [
                            Image.asset(
                              ImagePng.visa,
                              scale: 11,
                            ),
                            Text(
                              leftTextUp,
                              style:
                                  Styles.headLineStyle3.copyWith(fontSize: 17),
                            )
                          ],
                        ),
                  SizedBox(height: AppLayOut.getHeight(5, context)),
                  Text(
                    leftTextDown,
                    style: Styles.headLineStyle4,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    rightTextUp,
                    style: Styles.headLineStyle3.copyWith(fontSize: 17),
                  ),
                  SizedBox(height: AppLayOut.getHeight(5, context)),
                  Text(
                    rightTextDown,
                    style: Styles.headLineStyle4,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
