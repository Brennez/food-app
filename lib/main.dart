import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.blueGrey,
          ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
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
                        color: Color(0xff201F20),
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
                cursorColor: const Color(0xff201F20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'All',
                  style: TextStyle(
                    color: Color(0xffA1A0A4),
                    fontFamily: 'gilroy-mediu',
                  ),
                ),
                Text(
                  'Healthy food',
                  style: TextStyle(
                    color: Color(0xff201F20),
                    fontFamily: 'gilroy-semi-bold',
                  ),
                ),
                Text(
                  'Junk food',
                  style: TextStyle(
                    color: Color(0xffA1A0A4),
                    fontFamily: 'gilroy-mediu',
                  ),
                ),
                Text(
                  'Dessert',
                  style: TextStyle(
                    color: Color(0xffA1A0A4),
                    fontFamily: 'gilroy-mediu',
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
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
                                color: Color(0xffFF7272),
                              ),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                AssetImage('assets/images/food1.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 13.78,
                            ),
                            child: Text(
                              'Eybisi Salad Mix',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0xff201F20),
                                fontFamily: 'gilroy-semi-bold',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 11.89,
                            ),
                            child: Text(
                              'Mix vegetables ingredients',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0xffA1A0A4),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 14.68,
                            ),
                            child: Text(
                              '\$14.99',
                              style: TextStyle(
                                color: Color(0xff201F20),
                                fontFamily: 'gilroy-bold',
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // --------- SEGUNDO CARD --------------
                  Card(
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
                                color: Color(0xffFF7272),
                              ),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                AssetImage('assets/images/food1.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 13.78,
                            ),
                            child: Text(
                              'Easy Greak Salad',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0xff201F20),
                                fontFamily: 'gilroy-semi-bold',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 11.89,
                            ),
                            child: Text(
                              'Loves and Lemon',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0xffA1A0A4),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 14.68,
                            ),
                            child: Text(
                              '\$21.99',
                              style: TextStyle(
                                color: Color(0xff201F20),
                                fontFamily: 'gilroy-bold',
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                color: Color(0xff201F20),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
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
                            color: Color(0xffBCBBBC),
                          ),
                        ),
                        const Text(
                          'Cart',
                          style: TextStyle(
                            color: Color(0xffBCBBBC),
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
                            color: Color(0xffBCBBBC),
                            fontFamily: 'gilroy-regular',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
