import 'package:flutter/material.dart';
import 'package:flutter_started/list_loader.dart';
import 'package:flutter_started/planet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Planet> ls = [
    Planets.PLANET_EARTH,
    Planets.PLANET_MARS,
    Planets.PLANET_JUPITER,
    Planets.PLANET_SATURN,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Solar System",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Solar System"),
          ),
          backgroundColor: Color(50),
          body: ListLoader().buildList(ls),
        ));
  }
}
