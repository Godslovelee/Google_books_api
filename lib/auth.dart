import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

abstract class BaseAuthFireBase{
  Future<String>signInWithEmailAndPassword(email, password);
  Future<String>createUserWithEmailAndPassword(email, password);
  Future<String>currentUser();
}