import 'package:flutter/material.dart';
import 'package:food/consts/colors.dart';
import 'package:food/core/food.dart';
import 'package:food/screens/detailsPage.dart';

class FoodCard extends StatefulWidget {
  const FoodCard({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const DetailsPage();
            },
          ),
        );
      },
      child: Card(
        elevation: 8,
        margin: const EdgeInsets.only(
          top: 35,
          bottom: 35,
          left: 17,
          right: 17,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 23,
            right: 23,
            bottom: 37,
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 100,
                  top: 16,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: kLikeIconColor,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(widget.food.getUrlImage()),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 13.78,
                ),
                child: Text(
                  widget.food.getName(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    color: kSecondaryColor,
                    fontFamily: 'gilroy-semi-bold',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 11.89,
                ),
                child: Text(
                  widget.food.getDescription(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    color: kfoodTypesDisableColor,
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 14.68,
                ),
                child: Text(
                  '\$${widget.food.getPrice()}',
                  style: const TextStyle(
                    color: kSecondaryColor,
                    fontFamily: 'gilroy-bold',
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
