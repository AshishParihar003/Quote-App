import 'package:flutter/material.dart';

class SadQuote extends StatelessWidget {
  final List<Quote> quotes = [
    Quote(
        '''"The greater your capacity to love, the greater your capacity to feel the pain." ''',
        'Jennifer Aniston'),
    Quote('''"The heaviest of burdens is an unfulfilled potential."''',
        ' Steve Jobs'),
    Quote('''"Behind every beautiful thing, there's some kind of pain."''',
        ' Bob Dylan'),
    Quote('''"Sadness is but a wall between two gardens."''', ' Kahlil Gibran'),
    Quote('''"Sadness flies away on the wings of time." ''',
        '  Jean de La Fontaine'),
    Quote('''"Sadness is almost never anything but a form of fatigue."''',
        '  André Gide'),
    Quote(
        '''"Our greatest joy and our greatest pain come in our relationships with others."''',
        ' Stephen R. Covey'),
    Quote(
        '''"The saddest summary of a life contains three descriptions: could have, might have, and should have."''',
        '  Louis E. Boone'),
    Quote(
        '''Quote('''
            "The heaviest of burdens is an unfulfilled potential."
            ''', ' Steve Jobs'),
    ''',
        '  Henry Wadsworth Longfellow'),
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
