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
    if(MediaQuery.of(context).size.width <600){
      isSmall = true;

    }
    return Scaffold(

    );

  }
}
