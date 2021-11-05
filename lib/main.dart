import 'package:flutter/material.dart';

import 'service/auth.dart';
import 'service/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark(),
      title: "Login Demo",
      home: RootPage(auth: Auth() ,

      ),
    );
  }
}
