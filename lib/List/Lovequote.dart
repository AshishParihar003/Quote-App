import 'package:flutter/material.dart';

class SadQuote extends StatelessWidget {
  final List<Quote> quotes = [
    Quote(
        '''"Love is not about how many days, months, or years you have been together. Love is about how much you love each other every single day."  ''',
        'Unknown'),
    Quote(
        '''"Love is an endless act of forgiveness. Forgiveness is the key to action and freedom."''',
        ' Maya Angelou'),
    Quote(
        '''"Love is not an equation; it is not a contract, and it is not a happy ending. Love is the slate under the chalk, the ground that buildings rise, and the oxygen in the air. It is the place you come back to, no matter where you're headed." ''',
        '  Jodi Picoult'),
    Quote('''"Love is like the wind, you can't see it but you can feel it."''',
        ' Nicholas Sparks'),
    Quote('''"Sadness flies away on the wings of time." ''',
        '  Jean de La Fontaine'),
    Quote(
        '''"To love at all is to be vulnerable. Love anything, and your heart will certainly be wrung and possibly be broken. If you want to make sure of keeping it intact, you must give your heart to no one, not even to an animal. Wrap it carefully round with hobbies and little luxuries; avoid all entanglements; lock it up safe in the casket or coffin of your selfishness. But in that casket — safe, dark, motionless, airless — it will change. It will not be broken; it will become unbreakable, impenetrable, irredeemable." ''',
        '   C.S. Lewis'),
    Quote(
        '''"Our greatest joy and our greatest pain come in our relationships with others."''',
        ' Stephen R. Covey'),
    Quote(
        '''"When I say I love you more, I don't mean I love you more than you love me. I mean I love you more than the bad days ahead of us. I love you more than any fight we will ever have. I love you more than the distance between us. I love you more than any obstacle that could ever try and come between us. I love you the most."''',
        '   Unknown'),
    Quote('''
            "I have waited for this opportunity for more than half a century, to repeat to you once again my vow of eternal fidelity and everlasting love."
            
    ''', '  Gabriel Garcia Marquez'),
    Quote(
        '''"In the arithmetic of love, one plus one equals everything, and two minus one equals nothing."''',
        ' Mignon McLaughlin'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(' Sad Quote'),
        ),
        body: QuoteList(quotes),
      ),
    );
  }
}

class Quote {
  final String text;
  final String author;

  Quote(this.text, this.author);
}

class QuoteList extends StatelessWidget {
  final List<Quote> quotes;

  QuoteList(this.quotes);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quotes.length,
      itemBuilder: (context, index) {
        return QuoteCard(quote: quotes[index]);
      },
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;

  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- ' + quote.author,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
