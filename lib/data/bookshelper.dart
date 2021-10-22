// TODO Implement this library.

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import '../book_main.dart';
dynamicimport 'books.dart';
import 'package:http/http.dart' ;
import 'package:shared_preferences/shared_preferences.dart';
import '../favouriteScreen.dart';

class BooksHelper{
  final String urlKey = "&key=[ADD YOUR KEY HERE]";
  final String urlQuery = "volumes?q=";
  final String urlBase = "https://www.googleapis.com/books/v1";

  Future<List<dynamic>> getBooks(String query) async{
    final String url = urlBase + urlQuery + query;
    Response result = await http.get(url);
    if(result.statusCode == 200){
      final jsonResponse = json.decode(result.body);
      final  booksMap = jsonResponse["items"];
      List<dynamic> books = booksMap.map((i) => Book.fromJson(i)).toList();
      return
    }
  }

}