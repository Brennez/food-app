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
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    fontFamily: 'gilroy-medium',
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
              children: [
                Text(
                  'All',
                  style: TextStyle(
                    color: Color(0xffA1A0A4),
                    fontFamily: 'gilroy-medium',
                  ),
                ),
                Text(
                  'Healthy food',
                  style: TextStyle(
                    color: Color(0xff201F20),
                    fontFamily: 'gilroy-semi-bold',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Junk food',
                  style: TextStyle(
                    color: Color(0xffA1A0A4),
                    fontFamily: 'gilroy-medium',
                  ),
                ),
                Text(
                  'Dessert',
                  style: TextStyle(
                    color: Color(0xffA1A0A4),
                    fontFamily: 'gilroy-medium',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  margin: EdgeInsets.only(
                    top: 35,
                    bottom: 35,
                    left: 17,
                    right: 17,
                  ),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Color(0xffFF7272),
                            ),
                          )
                        ],
                      ),
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('assets/images/food1.png'),
                      ),
                      Text('Eybisi Salad Mix'),
                      Text('Mix vegetables ingredients'),
                      Text('\$14.99'),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
