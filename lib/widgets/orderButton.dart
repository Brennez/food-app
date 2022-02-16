import 'package:flutter/material.dart';
import 'package:food/consts/colors.dart';

class OrderButton extends StatelessWidget {
  const OrderButton(
      {Key? key,
      required this.onPressed,
      required this.border,
      required this.text})
      : super(key: key);

  final Function onPressed;
  final String text;
  final bool border;

  @override
  Widget build(BuildContext context) {
    if (border) {
      return GestureDetector(
        onTap: onPressed(),
        child: Container(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 16,
            left: 35,
            right: 35,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: kSecondaryColor,
                width: 1,
              )),
          child: Text(
            text,
            style: const TextStyle(
              color: kSecondaryColor,
              fontFamily: 'gilroy-bold',
              fontSize: 14,
            ),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: onPressed(),
        child: Container(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 16,
            left: 35,
            right: 35,
          ),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'gilroy-bold',
              fontSize: 14,
            ),
          ),
        ),
      );
    }
  }
}
