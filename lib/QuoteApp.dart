import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quote_app/List/quotes.dart';

class QuoteApp extends StatefulWidget {
  const QuoteApp({super.key});

  @override
  State<QuoteApp> createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  List? imageList;
  int? imageNumber = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        //color: Colors.grey,
        width: width,
        height: height,
        child: Column(
          children: [
            Center(
              child: GestureDetector(
                child: Container(
                  height: height * 0.9,
                  width: width,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: AssetImage('assets/main.png'),
                          fit: BoxFit.cover)),
                  child: CarouselSlider.builder(
                    itemCount: quoteList.length,
                    itemBuilder: (context, index1, index2) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 200),
                            child: Text(
                              quoteList[index1][kQuote],
                              style: kQuoteTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '- ${quoteList[index1][kAuthor]} -',
                            style: kAuthorTextStyle,
                          ),
                        ],
                      );
                    },
                    options: CarouselOptions(
                        scrollDirection: Axis.vertical,
                        pageSnapping: true,
                        enlargeCenterPage: true,
                        onPageChanged: (index, value) {
                          HapticFeedback.lightImpact();
                          imageNumber = index;
                          setState(() {});
                        }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
