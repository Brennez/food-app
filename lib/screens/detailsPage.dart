import 'package:flutter/material.dart';
import 'package:food/consts/colors.dart';
import 'package:food/widgets/countButton.dart';
import 'package:food/widgets/CardDescription.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int countItem = 0;

  void incrementItem() {
    countItem++;
  }

  void decrementItem() {
    if (countItem > 0) {
      countItem--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F7FC),
      appBar: AppBar(
        backgroundColor: Color(0xffF6F7FC),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 16,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: kSecondaryColor,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 90,
              bottom: 90,
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
                            child: CountButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  decrementItem();
                                });
                              },
                            ),
                          ),
                          Text(
                            countItem.toString(),
                            style: const TextStyle(
                              color: kSecondaryColor,
                              fontFamily: 'gilroy-bold',
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 19,
                            ),
                            child: CountButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  incrementItem();
                                });
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/food1.png',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ],
            ),
          ),
          CardDescription(
              description:
                  'This Italian salad is full of all the right flavors and textures: crisp lettuce, crunchy garlic croutons, and zingy pepperoncini. It’s covered in punchy, herby Italian vinaigrette that makes the flavors sing! It can play sidekick to just about anything.',
              stars: 4.5)
        ],
      ),
    );
  }
}
