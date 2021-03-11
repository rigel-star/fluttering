class Planet {
  final int id;
  final String src;
  final String name;
  final String distFromSun;
  final int position;
  const Planet({this.id, this.src, this.name, this.distFromSun, this.position});
}

class Planets {
  static const ID_EARTH = 0x0;
  static const ID_MARS = 0x1;
  static const ID_JUPITER = 0x2;
  static const ID_SATURN = 0x3;

  static const Planet PLANET_EARTH = Planet(
      id: ID_EARTH,
      src: "images/earth.png",
      name: "Earth",
      distFromSun: "150M",
      position: 3);

  static const Planet PLANET_MARS = Planet(
      id: ID_MARS,
      src: "images/mars.png",
      name: "Mars",
      distFromSun: "160M",
      position: 4);

  static const Planet PLANET_JUPITER = Planet(
      id: ID_JUPITER,
      src: "images/jupiter.png",
      name: "Jupiter",
      distFromSun: "1B",
      position: 5);

  static const Planet PLANET_SATURN = Planet(
      id: ID_SATURN,
      src: "images/saturn.png",
      name: "Saturn",
      distFromSun: "1.5B",
      position: 6);
}
