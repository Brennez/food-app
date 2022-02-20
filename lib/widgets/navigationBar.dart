import 'package:flutter/material.dart';
import 'package:food/consts/colors.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  bool isHome = true;
  bool isCart = false;
  bool isPerson = false;

  toggleHome() {
    setState(() {
      if (isHome) {
      } else {
        isHome = true;
        isCart = false;
        isPerson = false;
      }
    });
  }

  toggleCart() {
    setState(() {
      if (isCart) {
      } else {
        isCart = true;
        isHome = false;
        isPerson = false;
      }
    });
  }

  togglePerson() {
    setState(() {
      if (isPerson) {
      } else {
        isPerson = true;
        isHome = false;
        isCart = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 22,
        left: 16,
        right: 16,
        bottom: 29,
      ),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    toggleHome();
                  },
                  icon: Icon(
                    Icons.home_outlined,
                    color: isHome ? Colors.white : kIconBarDisableColor,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: isHome ? Colors.white : kIconBarDisableColor,
                    fontFamily: 'gilroy-regular',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    toggleCart();
                  },
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: isCart ? Colors.white : kIconBarDisableColor,
                  ),
                ),
                Text(
                  'Cart',
                  style: TextStyle(
                    color: isCart ? Colors.white : kIconBarDisableColor,
                    fontFamily: 'gilroy-regular',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    togglePerson();
                  },
                  icon: Icon(
                    Icons.person_outline,
                    color: isPerson ? Colors.white : kIconBarDisableColor,
                  ),
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                    color: isPerson ? Colors.white : kIconBarDisableColor,
                    fontFamily: 'gilroy-regular',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
