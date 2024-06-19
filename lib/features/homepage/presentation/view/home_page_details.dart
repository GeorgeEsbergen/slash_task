// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_task/core/utils/styles.dart';
import 'widgets/appbar_row.dart';
import 'widgets/item_card.dart';
import 'widgets/search_row.dart';
import 'widgets/see_all.dart';

class HomePageDetails extends StatelessWidget {
  HomePageDetails({super.key});
  List<String> categories = [
    'assets/icons/categories/tshirt.png',
    'assets/icons/categories/games.png',
    'assets/icons/categories/acces.png',
    'assets/icons/categories/Books.png',
    'assets/icons/categories/games.png',
    'assets/icons/categories/tshirt.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          children: [
            const AppBarRow(),
            const SizedBox(height: 25),
            const SearchlAndFilterRow(),
            const SizedBox(height: 100),
            const SeeAllRow(
              text: "Categries",
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 110,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Catigoriescircle(
                        image: categories[index],
                        name: "Fashion",
                      ),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: categories.length),
            ),
            const SizedBox(height: 30),
            const SeeAllRow(
              text: "Best Selling",
            ),
            const SizedBox(height: 20),
            Container(
              height: 177,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ItemCard(
                        image: "assets/images/best_seller_2.png",
                        name: "Notebook",
                        price: 55,
                      ),
                  separatorBuilder: (context, index) => SizedBox(width: 20),
                  itemCount: 5),
            ),
            const SizedBox(height: 30),
            const SeeAllRow(
              text: "New Arrival",
            ),
            const SizedBox(height: 20),
            Container(
              height: 177,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ItemCard(
                        image: "assets/images/new_arrival_2.png",
                        name: "Notebook",
                        price: 55,
                      ),
                  separatorBuilder: (context, index) => SizedBox(width: 20),
                  itemCount: 5),
            ),
            const SizedBox(height: 30),
            const SeeAllRow(
              text: "Recommended for you",
            ),
            const SizedBox(height: 20),
            Container(
              height: 177,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ItemCard(
                        image: "assets/images/recommended_2.png",
                        name: "Notebook",
                        price: 55,
                      ),
                  separatorBuilder: (context, index) => SizedBox(width: 20),
                  itemCount: 5),
            ),
            SizedBox(height: 50),
          ],
        ),
      )),
    );
  }
}

class Catigoriescircle extends StatelessWidget {
  const Catigoriescircle({
    super.key,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 72,
          width: 72,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xff292929),
              borderRadius: BorderRadius.circular(50)),
          child: Image.asset(
            image,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: Styles.font14W400,
        )
      ],
    );
  }
}
