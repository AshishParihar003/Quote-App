import 'package:flutter/material.dart';

class QuoteListPage extends StatefulWidget {
  @override
  _QuoteListPageState createState() => _QuoteListPageState();
}

class _QuoteListPageState extends State<QuoteListPage> {
  int currentListIndex = 1;

  List<List<Quote>> quoteSets = [
    [
      Quote(
          ''' "Well-told stories help turn moments of great crises into moments of new beginnings. " ― Roland Barthes ''',
          false),
      Quote(
          ''' "Narrative is not talking “about” values; rather narrative embodies and communicates values. "― Tahir Shah, In Search of King Solomon's Mines ''',
          false),
      Quote(
          ''' “Can't you see that I'm only advising you to beg yourself not to be so dumb? ”― Alberto Manguel, The Library at Night ― Laura Chouette ''',
          false),
      Quote(
          ''' “Cellaholics are those who interrupt quality time when they are with you, but rather text, call, and email others who are somewhere else. ” ― A.D. Aliwat, In Limbo ''',
          false),
      Quote(
          ''' “The texts we write are not visible until they are written. Like a creature coaxed from out a deep wood, the text reveals itself little by little.” ― Rikki Ducornet, The Deep Zoo''',
          false),
      Quote(
          ''' “Nobody would text during an emergency, they would call. Otherwise it wouldn't be an emergency. ― Mokokoma Mokhonoana”''',
          false)
    ],
    [
      Quote(
          ''' "Where can we find the courage to act in spite of fear? Trying to eliminate that which we react to fearfully is a fool's errand because it locates the source of our fear outside ourselves, rather than within our own hearts. "― Ivan Angelo, Tower of Glass ''',
          false),
      Quote(
          '''"Hope is the belief in the probability of the possible rather than the necessity of the probable. " ― Alberto Manguel, The Library at Night ''',
          false),
      Quote(
          ''' "There's a real sweet spot between challenge and hope - leaders make pathways that keep both firmly in view. " ― India Knight ''',
          false),
      Quote(
          ''' "Young people have an almost biological destiny to be hopeful."  ― Gene Wolfe''',
          false),
      Quote(
          '''“Camouflaged letters would help improve communication, and I explain the reason why in this invisible text:” ― Jayce O'Neal
 ''', false),
      Quote(
          ''' “Nobody would text during an emergency, they would call. Otherwise it wouldn't be an emergency. ” ― Nick Harkaway''',
          false)
    ],
  ];

  void switchList() {
    setState(() {
      currentListIndex = (currentListIndex == 0) ? 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Quote> currentList = quoteSets[currentListIndex];

    return Scaffold(
      // appBar: AppBar(
      //   // actions: [
      //   //   Row(
      //   //     children: [
      //   //       IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
      //   //     ],
      //   //   )
      //   // ],
      // ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ElevatedButton(
              onPressed: switchList,
              child: Text(
                "Switch Quotes",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: currentList.length,
              itemBuilder: (context, index) {
                return QuoteTile(quote: currentList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BookmarksPage {}

class QuoteTile extends StatelessWidget {
  final Quote quote;

  QuoteTile({required this.quote});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: width,
          height: height / 3,
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(205, 215, 211, 211),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color.fromARGB(255, 44, 17, 17)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      quote.text,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // IconButton(
                  //   icon: Icon(
                  //     quote.isFavorite ? Icons.favorite_border : Icons.favorite,
                  //     color: quote.isFavorite? Colors.red,
                  //   ),
                  //   onPressed: () {
                  //     quote.isFavorite = !quote.isFavorite;
                  //   },
                  // ),
                  // IconButton(
                  //   icon: const Icon(Icons.share),
                  //   onPressed: () {},
                  // ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// quote_model.dart
class Quote {
  final String text;
  bool isFavorite;

  Quote(this.text, this.isFavorite);
}
