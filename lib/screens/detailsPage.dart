import 'package:flutter/material.dart';
import 'package:food/widgets/countButton.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Color(0xff201F20),
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Easy Greak\nSalad',
                      style: TextStyle(
                        color: Color(0xff201F20),
                        fontFamily: 'gilroy-semi-bold',
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'Price',
                      style: TextStyle(),
                    ),
                    Text('\$21.99'),
                    Text('Choice quantity'),
                    Row(
                      children: [
                        CountButton(icon: Icons.add),
                        Text('1'),
                        CountButton(icon: Icons.remove),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage(
                    'assets/images/food1.png',
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
