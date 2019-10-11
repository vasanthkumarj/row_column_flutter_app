import 'package:flutter/material.dart';

import 'app_screens/home.dart';

void main() => runApp(Myapp());


class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
                       debugShowCheckedModeBanner: false,
                       title: "Explore row and column widget",
                       home: Home(),
                       );
  }
}
