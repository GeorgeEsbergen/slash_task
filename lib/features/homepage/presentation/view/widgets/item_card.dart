import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });
  final String image;
  final String name;
  final int price;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 177,
      width: 124,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 124,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                      color: const Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: Styles.font16W400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "EGP $price",
                style: Styles.font16W700,
              ),
              Row(
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: const Color(0xff292929),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/icons/small.png",
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(width: 5),
                  Container(
                    alignment: Alignment.center,
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xff292929),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      weight: 10,
                      size: 18,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
