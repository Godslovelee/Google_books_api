import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

abstract class BaseAuthFireBase{
  Future<String>signInWithEmailAndPassword(email, password);
  Future<String>createUserWithEmailAndPassword(email, password);
  Future<String>currentUser();
}

class Auth implements BaseAuthFireBase{
  Future<String>signInWithEmailAndPassword(email, password)async{
    FirebaseUser user = (await FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: email, password: password)).user;
    return user.uid;

  }
