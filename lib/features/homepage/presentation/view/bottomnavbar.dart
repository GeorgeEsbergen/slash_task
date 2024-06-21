import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/bottomnav_cubit.dart';
import 'home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          switch (state) {
            case 0:
              return const HomePage();
            case 1:
              return const HomePage();
            case 2:
              return const HomePage();
            case 3:
              return const HomePage();
            default:
              return const HomePage();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: context.watch<NavigationCubit>().state,
        onTap: (index) => context.read<NavigationCubit>().navigateTo(index),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/nav_bar/home.png',
              height: 24,
              width: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/nav_bar/heart.png',
              height: 24,
              width: 24,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/nav_bar/shopping-cart.png',
              height: 24,
              width: 24,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/nav_bar/profile-circle.png',
              height: 24,
              width: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
