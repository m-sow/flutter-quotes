import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'package:quotes/quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList() ,
  ));
}

class QuoteList extends StatefulWidget {

  
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes=[
    Quote(text: "this is the first quote", author: "author 1"),
    Quote(text: "this is the second quote", author: "author 1"),
    Quote(text: "this is the third quote", author: "author 1"),
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((e) => QuoteCard(
            quote:e,
            delete: (){
              setState(() {
                quotes.remove(e);
              });
            }
        )).toList(),
      ),
    );
  }
}
