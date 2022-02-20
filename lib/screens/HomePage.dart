import 'package:flutter/material.dart';
import 'package:food/consts/colors.dart';
import 'package:food/core/food.dart';
import 'package:food/widgets/foodCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List<Food> foods = const [
  Food(
    'Eybisi Salad Mix',
    'Mix vegetables ingredients',
    21.99,
    "This is a good salad to with friends and family maybe with your girlfriend.",
    'assets/images/food1.png',
  ),
  Food(
    'Easy Greak Salad',
    'Loves and Lemon',
    21.99,
    "This Italian salad is full of all the right flavors and textures: crisp lettuce, crunchy garlic croutons, and zingy pepperoncini. It’s covered in punchy, herby Italian vinaigrette that makes the flavors sing! It can play sidekick to just about anything.",
    'assets/images/food1.png',
  ),
  Food(
    'Fish and Rice',
    'Rice with greak fish',
    21.99,
    "This is a good fish to eat with a kind of wine and a good conversation with friends and talking about how this student have to take 10 in this avaliation yeah.",
    'assets/images/food1.png',
  ),
];

class _HomePageState extends State<HomePage> {
  bool isAll = false;
  bool isHealthy = false;
  bool isJunk = false;
  bool isDessert = false;

  toogleAllFood() {
    setState(() {
      if (isAll) {
        isAll = false;
      } else {
        isAll = true;
        isHealthy = false;
        isJunk = false;
        isDessert = false;
      }
    });
  }

  toogleHealthyFood() {
    setState(() {
      if (isHealthy) {
        isHealthy = false;
      } else {
        isHealthy = true;
        isAll = false;
        isJunk = false;
        isDessert = false;
      }
    });
  }

  toogleJunkFood() {
    setState(() {
      if (isJunk) {
        isJunk = false;
      } else {
        isJunk = true;
        isHealthy = false;
        isAll = false;
        isDessert = false;
      }
    });
  }

  toogleDessertFood() {
    setState(() {
      if (isDessert) {
        isDessert = false;
      } else {
        isDessert = true;
        isJunk = false;
        isHealthy = false;
        isAll = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 55,
                left: 21,
                right: 21,
                bottom: 74,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/Menu.png'),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kBackgroundColor,
                        border: Border.all(
                          color: Color(0xffFB9692),
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/person.png'),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 17),
              child: Row(
                children: const [
                  Text(
                    'Enjoy your favourite \nfood delicious',
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontFamily: 'gilroy-bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 49),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  fillColor: Colors.white,
                  hintText: 'Search...',
                  hintStyle: const TextStyle(
                    fontFamily: 'gilroy-mediu',
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 45,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                cursorColor: kSecondaryColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    toogleAllFood();
                  },
                  child: Text(
                    'All',
                    style: TextStyle(
                      color: isAll ? kSecondaryColor : kfoodTypesDisableColor,
                      fontFamily: 'gilroy-semi-bold',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    toogleHealthyFood();
                  },
                  child: Text(
                    'Healthy food',
                    style: TextStyle(
                      color:
                          isHealthy ? kSecondaryColor : kfoodTypesDisableColor,
                      fontFamily: 'gilroy-semi-bold',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    toogleJunkFood();
                  },
                  child: Text(
                    'Junk food',
                    style: TextStyle(
                      color: isJunk ? kSecondaryColor : kfoodTypesDisableColor,
                      fontFamily: 'gilroy-semi-bold',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    toogleDessertFood();
                  },
                  child: Text(
                    'Dessert',
                    style: TextStyle(
                      color:
                          isDessert ? kSecondaryColor : kfoodTypesDisableColor,
                      fontFamily: 'gilroy-semi-bold',
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodCard(
                    food: foods[0],
                  ),
                  FoodCard(
                    food: foods[1],
                  ),
                  FoodCard(food: foods[2])
                ],
              ),
            ),
            Container(
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
                          onPressed: () {},
                          icon: Image.asset('assets/images/Home.png'),
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'gilroy-regular',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_bag_outlined,
                            color: kIconBarDisableColor,
                          ),
                        ),
                        const Text(
                          'Cart',
                          style: TextStyle(
                            color: kIconBarDisableColor,
                            fontFamily: 'gilroy-regular',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/User.png'),
                        ),
                        const Text(
                          'Profile',
                          style: TextStyle(
                            color: kIconBarDisableColor,
                            fontFamily: 'gilroy-regular',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
