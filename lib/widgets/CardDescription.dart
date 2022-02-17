import 'package:flutter/material.dart';
import 'package:food/consts/colors.dart';

import 'orderButton.dart';

class CardDescription extends StatelessWidget {
  const CardDescription({
    Key? key,
    required this.description,
    required this.stars,
  }) : super(key: key);

  final String description;
  final double stars;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          margin: const EdgeInsets.only(
            top: 35,
            left: 35,
            right: 35,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontFamily: 'gilroy-bold',
                        fontSize: 18),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Text(
                        '$stars',
                        style: const TextStyle(
                          color: Colors.amber,
                          fontFamily: 'gilroy-bold',
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 35,
                ),
                child: Text(
                  description,
                  style: const TextStyle(
                    color: kSecondaryColor,
                    fontFamily: 'gilroy-regular',
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 40,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OrderButton(
                      onPressed: () {},
                      border: false,
                      text: 'Order Now',
                    ),
                    OrderButton(
                      onPressed: () {},
                      border: true,
                      text: "Add Cart",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
