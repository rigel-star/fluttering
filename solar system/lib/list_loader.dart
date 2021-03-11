import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_started/planet_info.dart';
import 'planet.dart';

class ListLoader {
  ListView buildList(List<Planet> ls) {
    return ListView.builder(
      itemCount: ls.length,
      padding: const EdgeInsets.all(8),
      itemBuilder: (BuildContext context, int index) {
        return PlanetCard2(ls[index]);
      },
    );
  }
}
