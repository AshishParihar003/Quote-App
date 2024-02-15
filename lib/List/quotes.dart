import 'package:flutter/material.dart';

String kQuote = 'quote';
String kAuthor = 'author';
String anonynous = 'Anonynous';

List quoteList = [
  {kQuote: 'The purpose of our lives is to be happy.', kAuthor: 'Dalai Lama'},
  {
    kQuote: "Life is what happens when you're busy making other plans",
    kAuthor: "John Lennon"
  },
  {
    kQuote: "Get busy living or get busy dying",
    kAuthor: "Stephen King",
  },
  {
    kQuote: "You only live once, but if you do it right, once is enough",
    kAuthor: "Mae West"
  },
  {
    kQuote:
        "Many of life's failures are people who did not realize how close they were to success when they gave up",
    kAuthor: "Thomas A. Edison"
  },
  {
    kQuote:
        "If you want to live a happy life, tie it to a goal, not to people or things",
    kAuthor: "Albert Einstein"
  },
  {
    kQuote: "Never let the fear of striking out keep you from playing the game",
    kAuthor: "Babe Ruth"
  },
  {
    kQuote:
        "Money and success don't change people; they merely amplify what is already there",
    kAuthor: "Will Smith"
  },
  {
    kQuote:
        "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma - which is living with the results of other people's thinkingYour time is limited, so don't waste it living someone else's life. Don't be trapped by dogma - which is living with the results of other people's thinking",
    kAuthor: "Steve Jobs"
  },
  {
    kQuote: "Not how long, but how well you have lived is the main thing",
    kAuthor: "Seneca"
  },
  {
    kQuote:
        "Your morning sets up the success of your day. So many people wake up and immediately check text messages, emails, and social media. I use my first hour awake for my morning routine of breakfast and meditation to prepare myself.",
    kAuthor: "Caroline Ghosn"
  },
  {
    kQuote:
        "Just in a professional world, sometimes a phone call is definitely more meaningful than a text.",
    kAuthor: "Kevin Harvick"
  },
  {
    kQuote: "One of my strengths over the years is to be open-minded.",
    kAuthor: "Kevin Harvick"
  },
  {
    kQuote: "The best preparation for tomorrow is doing your best today.",
    kAuthor: "Seneca"
  },
  {
    kQuote:
        "I can't change the direction of the wind, but I can adjust my sails to always reach my destination.",
    kAuthor: "Jimmy Dean"
  },
  {
    kQuote:
        "Ah, but a man's reach should exceed his grasp, Or what's a heaven for?",
    kAuthor: "Robert Browning"
  }
];

var kQuoteTextStyle = const TextStyle(
    fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600);

var kAuthorTextStyle = const TextStyle(
  fontSize: 20,
  color: Colors.white70,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.italic,
);

var accessKey = '18c5mq58lbN1sUKWE5EbWLunfZi1Y3BfJ1mzMENJ3go';
var secretKey = '_D7cuzZP8k523gEEJpYiAgN8n6lO9P5sKFGPxXT3k8I';

List imgList = [
  Image.asset('Assets/01.jpeg'),
  Image.asset('Assets/02.jpeg'),
  Image.asset('Assets/03.jpeg'),
];
