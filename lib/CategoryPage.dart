import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quote_app/List/Sadqust.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 10, right: 3, left: 3, bottom: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SadQuote()));
              },
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/SAd.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ClipRRect(
                      child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color:
                            Color.fromARGB(255, 120, 116, 116).withOpacity(0),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Sad",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ))),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, right: 3, left: 3, bottom: 10),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  image: DecorationImage(
                    image: ExactAssetImage("assets/love.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ClipRRect(
                    child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Color.fromARGB(255, 150, 146, 146).withOpacity(0),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Love",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ))),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, right: 3, left: 3, bottom: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SadQuote()));
              },
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/Sports.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ClipRRect(
                      child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color:
                            Color.fromARGB(255, 150, 146, 146).withOpacity(0),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Sports",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 248, 246, 246)),
                      ),
                    ),
                  ))),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, right: 3, left: 3, bottom: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SadQuote()));
              },
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/hyp.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ClipRRect(
                      child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color:
                            Color.fromARGB(255, 150, 146, 146).withOpacity(0),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Happy",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ))),
            ),
          ),
        ],
      ),
    );
  }
}
