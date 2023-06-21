import 'package:flutter/material.dart';
import 'package:furniture_shop_ui/constant.dart';
import 'package:furniture_shop_ui/size_config.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    required this.index,
    required this.image,
    required this.price,
    required this.name,
  });

  final int index;
  final String image, price, name;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool favorite = false;

  Color currentColor = kPrimaryColor;

  List<Color> colors = [
    kPrimaryColor,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.blueAccent
  ];

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Scaffold(
      backgroundColor: kAccentColor,
      bottomNavigationBar: Container(
        height: myHeight(context) * 0.08,
        decoration: BoxDecoration(
          color: currentColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(48),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text("\$ ${widget.price}",
                  style: const TextStyle(color: Colors.white, fontSize: 26)),
            ),
            GestureDetector(
              onTap: () => print("object"),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(
                    horizontal: myWidth(context) * 0.07,
                    vertical: myHeight(context) * 0.015),
                decoration: const BoxDecoration(
                    color: kLightColor,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Text("Add to Cart",
                    style: TextStyle(
                        color: currentColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: myHeight(context) * 0.4,
                  width: myWidth(context),
                  child: Image.asset(widget.image, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: kLightColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back_ios_new),
                        ),
                      ),
                      IconButton(
                        onPressed: () => print("More"),
                        icon: const Icon(
                          Icons.more_vert,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: -5,
                    child: Container(
                      height: 20,
                      width: myWidth(context),
                      decoration: const BoxDecoration(
                          color: kAccentColor,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(50))),
                    )),
                Positioned(
                  bottom: 0,
                  right: myWidth(context) * 0.1,
                  child: Container(
                    height: myWidth(context) * 0.18,
                    width: myWidth(context) * 0.18,
                    decoration: BoxDecoration(
                        color: kLightColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          favorite = !favorite;
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        size: 36,
                        color: favorite ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: myHeight(context) * 0.6,
              width: myWidth(context),
              decoration: const BoxDecoration(
                  color: kAccentColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(34))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Luxury Swedian \nChair",
                      style: TextStyle(
                          fontSize: myWidth(context) > 410 ? 30 : 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                            5,
                            (index) =>
                                const Icon(Icons.star, color: Colors.amber),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          "(4.5)",
                          style: TextStyle(
                            fontSize: myWidth(context) > 410 ? 18 : 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontFamily: "Roboto",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: myWidth(context) > 410 ? 18 : 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do deliceeo eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                      style: TextStyle(
                        fontSize: myWidth(context) > 410 ? 16 : 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Colors",
                              style: TextStyle(
                                fontSize: myWidth(context) > 410 ? 18 : 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: List.generate(colors.length, (index) {
                                return InkWell(
                                  onTap: () => setState(() {
                                    currentColor = colors[index];
                                  }),
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: colors[index],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ],
                    )
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
