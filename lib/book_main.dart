import 'dart:core';
import 'dart:core';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class BookMain extends StatefulWidget {
  const BookMain({Key key}) : super(key: key);

  @override
  _BookMainState createState() => _BookMainState();
}

class _BookMainState extends State<BookMain> {
  BooksHelper helper;
  List<dynamic> books = List<dynamic>();
  int booksCount;


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
