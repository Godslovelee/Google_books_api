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
 int booksCount ;


void initState(){
  helper = BooksHelper();
  initialize();
  super.initState();
}




  @override
  Widget build(BuildContext context) {
    bool isSmall = false;
    if(MediaQuery.of(context).size.width < 700){
      isSmall = true;
    }

    return Scaffold(
      appBar: AppBar(title: Text('Favorite Books'),
      actions: [
        InkWell(
          child: Padding(
            padding: EdgeInsets.all(20.0),  child:(isSmall) ?  Icon(Icons.home) : Text("Home"),),
    onTap: (){

    },

          ),


      ],
      ),

    );
  }

  Future initialize()async {

  }
}
