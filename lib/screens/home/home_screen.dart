import 'package:flutter/material.dart';
import 'package:furniture_shop_ui/constant.dart';
import 'package:furniture_shop_ui/size_config.dart';
import 'components/big_text.dart';
import 'components/headline_text.dart';
import 'components/product_card.dart';
import 'components/sidemenu_and_picture.dart';
import 'components/textfield_and_scanbutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  bool tags = false;

  List<String> categoryList = [
    "All",
    "Chair",
    "Sofa",
    "Lamp",
    "Kitchen",
    "Table",
  ];
  List popularList = [
    {
      "image": "assets/images/chair1.jpg",
      "name": "Luxury Swedian Chair",
      "price": "899"
    },
    {
      "image": "assets/images/chair2.jpg",
      "name": "Luxury Swedian Chair",
      "price": "1299"
    },
    {
      "image": "assets/images/chair3.jpg",
      "name": "Luxury Swedian Chair",
      "price": "688"
    },
    {
      "image": "assets/images/chair4.jpg",
      "name": "Luxury Swedian Chair",
      "price": "1488"
    },
  ];
  List bestList = [
    {
      "image": "assets/images/chair5.jpg",
      "name": "Luxury Swedian Chair",
      "price": "899"
    },
    {
      "image": "assets/images/chair6.jpg",
      "name": "Luxury Swedian Chair",
      "price": "1299"
    },
    {
      "image": "assets/images/chair7.jpg",
      "name": "Luxury Swedian Chair",
      "price": "688"
    },
    {
      "image": "assets/images/chair8.png",
      "name": "Luxury Swedian Chair",
      "price": "1488"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              top: myHeight(context) * 0.03,
              left: myHeight(context) * 0.03,
              right: myHeight(context) * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SideMenuAndPicture(),
                const HeadlineText(),
                const TextFieldAndScanButton(),

                // Text Menu
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: myHeight(context) * 0.03),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        6,
                        (index) => Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: myWidth(context) * 0.033),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  categoryList[index],
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: currentIndex == index
                                        ? kPrimaryColor
                                        : Colors.black.withOpacity(0.5),
                                  ),
                                ),
                                Container(
                                  height: myHeight(context) * 0.005,
                                  width: myWidth(context) * 0.05,
                                  decoration: BoxDecoration(
                                    color: currentIndex == index
                                        ? kPrimaryColor
                                        : Colors.transparent,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const BigText(text: "Popular"),

                // List Popular ProductCards
                ProductCard(cardList: popularList),

                const BigText(text: "Best"),

                // List Best ProductCards
                ProductCard(cardList: bestList),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
