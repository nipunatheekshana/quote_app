import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'clases/quote.dart';
import 'custom_widgets/Quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: Quotelist(),
  ));
}

class Quotelist extends StatefulWidget {
  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quote> quotes = [
    Quote(author: 'nippa', text: 'how old are you'),
    Quote(author: 'madu', text: 'What is your name'),
    Quote(author: 'kasun', text: 'please go home')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesom Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // children: quotes
        //     .map((quote) => Text('${quote.text} - ${quote.author}'))
        //     .toList(),
        // above is one way
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote, //first parameter to the quote_card imported above
                delete: () {
                  //second parameter to the quote_card imported above and it is a function
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
