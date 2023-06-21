import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
import '../../details/details_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.cardList,
  });

  final List cardList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeight(context) * 0.40,
      margin: const EdgeInsets.only(top: 30, bottom: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  index: index,
                  image: cardList[index]["image"],
                  price: cardList[index]["price"],
                  name: cardList[index]["name"],
                ),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              height: myHeight(context) * 0.40,
              width: myHeight(context) * 0.30,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  color: kLightColor,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: myHeight(context) * 0.25,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          image: DecorationImage(
                            image: AssetImage(cardList[index]["image"]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Positioned(
                        right: 15,
                        top: 15,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    cardList[index]["name"],
                    style: TextStyle(
                      fontSize: myWidth(context) < 410
                          ? 18
                          : 25, // Ekran boyutuna Göre Text boyutunu değiştirme
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(
                          5,
                          (index) =>
                              const Icon(Icons.star, color: Colors.amber),
                        ),
                      ),
                      Text(
                        "\$ ${cardList[index]["price"]}",
                        style: TextStyle(
                          fontSize: myWidth(context) > 600 ? 18 : 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
