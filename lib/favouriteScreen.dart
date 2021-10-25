import 'package:flutter/material.dart';
import './data/bookshelper.dart';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'book_main.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key key}) : super(key: key);

  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  BooksHelper helper;
  List<dynamic> books = List<dynamic>();
  int booksCount;

  void initState() {
    helper = BooksHelper();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isSmall = false;
    if (MediaQuery.of(context).size.width < 700) {
      isSmall = true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Books'),
        actions: [
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: (isSmall) ? Icon(Icons.home) : Text("Home"),
            ),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>BookMain())
              );
            },
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: (isSmall) ? Icon(Icons.star) : Text("Favorites"),

            )
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('My favourite'),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child:(isSmall) ? BooksList(books,true) : BooksTable(books,true)
          )
        ],
      ),
    );ddf
  }

  Future initialize() async {
    books = await helper.getFavorites();
    setState(() {
      booksCount = books.length;
      books = books;

    });
  }
}
