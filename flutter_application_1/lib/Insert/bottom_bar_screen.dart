// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Insert/personal_screen.dart';
import 'package:flutter_application_1/Insert/search_product_screen.dart';
import 'package:flutter_application_1/Insert/shopping_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../components/drawer.dart';
import 'home_screen.dart';





class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final pages = [
    HomeScreen(),
    ShoppingScreen(),
    SearchProductScreen(),
    PersonalScreen(),
  ];


  Color activateColor = Colors.deepOrange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/vectors/ic_home.svg",
            ),
            backgroundColor: Colors.lightGreen,
            label: '',
            activeIcon: SvgPicture.asset(
              "assets/vectors/ic_home.svg",
              // ignore: deprecated_member_use
              color: activateColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/vectors/ic_shopping.svg",
            ),
            label: '',
            activeIcon: SvgPicture.asset(
              "assets/vectors/ic_shopping.svg",
              // ignore: deprecated_member_use
              color: activateColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/vectors/ic_search.svg",
            ),
            label: '',
            activeIcon: SvgPicture.asset(
              "assets/vectors/ic_search.svg",
              color: activateColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/vectors/ic_user.svg",
            ),
            label: '',
            activeIcon: SvgPicture.asset(
              "assets/vectors/ic_user.svg",
              color: activateColor,
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}

