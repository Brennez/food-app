import 'package:flutter/material.dart';

class CountButton extends StatelessWidget {
  const CountButton({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

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
        onPressed: () {},
        icon: Icon(
          icon,
          size: 15,
        ),
      ),
    );
  }
}
