import 'package:flutter/material.dart';
import 'package:food/consts/colors.dart';
import 'package:food/core/food.dart';
import 'package:food/widgets/foodCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List<Food> foods = [
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
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/doguinho.jpg'),
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
              children: const [
                Text(
                  'All',
                  style: TextStyle(
                    color: kfoodTypesDisableColor,
                    fontFamily: 'gilroy-mediu',
                  ),
                ),
                Text(
                  'Healthy food',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontFamily: 'gilroy-semi-bold',
                  ),
                ),
                Text(
                  'Junk food',
                  style: TextStyle(
                    color: kfoodTypesDisableColor,
                    fontFamily: 'gilroy-mediu',
                  ),
                ),
                Text(
                  'Dessert',
                  style: TextStyle(
                    color: kfoodTypesDisableColor,
                    fontFamily: 'gilroy-mediu',
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
