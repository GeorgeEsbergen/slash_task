// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import '../../../../core/functions/get_data.dart';
import 'widgets/appbar_row.dart';
import 'widgets/category_circle.dart';
import 'widgets/image_slider.dart';
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
    return FutureBuilder(
        future: loadJson(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data == null) {
            return const Center(child: Text('No data found'));
          } else {
            final bestSelling = parseItems(snapshot.data!['bestSelling']);
            final newArrival = parseItems(snapshot.data!['newArrival']);
            final recommendedForYou =
                parseItems(snapshot.data!['recommendedForYou']);

            return SingleChildScrollView(
              child: SafeArea(
                  child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const AppBarRow(),
                    const SizedBox(height: 25),
                    const SearchlAndFilterRow(),
                    const SizedBox(height: 25),
                    const CarouselWithIndicator(),
                    const SizedBox(height: 25),
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
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 10),
                          itemCount: categories.length),
                    ),
                    const SizedBox(height: 30),
                    const SeeAllRow(
                      text: "Best Selling",
                    ),
                    const SizedBox(height: 20),
                    ItemCard(items: bestSelling, title: 'Best Selling'),
                    const SizedBox(height: 30),
                    const SeeAllRow(
                      text: "New Arrival",
                    ),
                    const SizedBox(height: 20),
                    ItemCard(items: newArrival, title: 'New Arrivals'),
                    const SizedBox(height: 30),
                    const SeeAllRow(
                      text: "Recommended for you",
                    ),
                    const SizedBox(height: 20),
                    ItemCard(
                        items: recommendedForYou, title: 'Recommended For You'),
                    const SizedBox(height: 50),
                  ],
                ),
              )),
            );
          }
        }));
  }
}
