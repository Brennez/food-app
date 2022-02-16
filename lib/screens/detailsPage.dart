import 'package:flutter/material.dart';
import 'package:food/consts/colors.dart';
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
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: kSecondaryColor,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 100,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 35,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Easy Greak\nSalad',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontFamily: 'gilroy-semi-bold',
                            fontSize: 40,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 4,
                            top: 19,
                          ),
                          child: Text(
                            'Price',
                            style: TextStyle(
                              color: kfoodTypesDisableColor,
                              fontFamily: 'gilroy-regular',
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 23,
                          ),
                          child: Text(
                            '\$21.99',
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontFamily: 'gilroy',
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 15,
                          ),
                          child: Text(
                            'Choice quantity',
                            style: TextStyle(
                              color: kfoodTypesDisableColor,
                              fontFamily: 'gilroy-regular',
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                right: 19,
                              ),
                              child: CountButton(icon: Icons.add),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                color: kSecondaryColor,
                                fontFamily: 'gilroy-bold',
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 19,
                              ),
                              child: CountButton(icon: Icons.remove),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage(
                      'assets/images/food1.png',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
