import 'package:flutter/material.dart';
import 'package:food/consts/colors.dart';

class CountButton extends StatelessWidget {
  const CountButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: IconButton(
        onPressed: () {
          onPressed();
        },
        icon: Icon(
          icon,
          size: 15,
          color: kSecondaryColor,
        ),
      ),
    );
  }
}
