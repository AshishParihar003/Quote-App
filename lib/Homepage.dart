// ignore: file_names
import 'package:flutter/material.dart';

import 'package:quote_app/Explore.dart';
import 'package:quote_app/CategoryPage.dart';
import 'package:quote_app/QuoteApp.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _HomePageState();
}

class _HomePageState extends State<Home_Page> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        shadowColor: Colors.black,
        backgroundColor: const Color.fromARGB(31, 210, 207, 207),
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.shop), label: 'Shop'),
          NavigationDestination(
              icon: Icon(Icons.search_off_rounded), label: 'Explore'),
          // NavigationDestination(icon: Icon(Icons.face), label: 'Profile'),
        ],
      ),
      body: <Widget>[
        const QuoteApp(),
        QuoteListPage(),
        Category(),
        //const detail()
      ][currentPage],
    );
  }
}
