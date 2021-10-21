import 'dart:core';
import 'dart:core';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookMain extends StatefulWidget {
  const BookMain({Key key}) : super(key: key);

  @override
  _BookMainState createState() => _BookMainState();
}

class _BookMainState extends State<BookMain> {
  BooksHelper helper;
  List<dynamic> books = List<dynamic>();
  int booksCount;
  TextEditingController txtSearchController;

  void initState() {
    helper = BooksHelper();
    txtSearchController = new TextEditingController();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isSmall = false;
    if (MediaQuery.of(context).size.width < 600) {
      isSmall = true;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        actions: [
          InkWell(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: (isSmall) ? Icon(Icons.home) : Text("Home")),
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: (isSmall) ? Icon(Icons.star) : Text('favourites'),
            ),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FavouritesScreen()))
            },
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text('Search Book'),
                Container(
                  padding: EdgeInsets.all(20.0),
                  width: 200,
                  child: TextField(
                    controller: txtSearchController,
                    keyboardType: TextInputType.text,
                    onSubmitted: (text) {
                      helper.getBooks(text).then((value) {
                        books = value;
                        setState(() {
                          books = books;
                        });
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child:  IconButton(
                    icon: Icon(Icons.search),
                     onPressed: () => helper.getBooks(txtSearchController.text)
                  ),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0),
            child:(isSmall) ? BooksList(books, false) : BooksTable(books, false),
            
          )
        ],
      )),
    );
  }
}
