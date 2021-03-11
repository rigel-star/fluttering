import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_started/custom_widgets.dart';
import 'package:flutter_started/planet.dart';

class PlanetCard2 extends StatefulWidget {
  final Planet planet;
  PlanetCard2(this.planet);
  @override
  _PlanetCard2State createState() {
    return _PlanetCard2State(planet);
  }
}

class _PlanetCard2State extends State<PlanetCard2> {
  Planet statePlanet;
  String _information;
  _PlanetCard2State(this.statePlanet) {
    this._information =
        "${statePlanet.name} is ${statePlanet.position} from Sun.";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      child: Card(
        shadowColor: Colors.white70,
        color: Colors.indigo,
        elevation: 5,
        child: Row(
          children: [
            Container(
              width: 150,
              height: 170,
              child: Image.asset(statePlanet.src),
            ),
            new Column(
              children: [
                new Text(statePlanet.name,
                    style: new TextStyle(
                      fontSize: 24,
                      //backgroundColor: Colors.deepPurpleAccent,
                      color: Colors.white,
                    )),
                new TextButton(
                  style: new ButtonStyle(
                      minimumSize: MaterialStateProperty.resolveWith(
                          (states) => new Size(40, 20)),
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.deepPurpleAccent)),
                  child: new Text(
                    "Show Info",
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PlanetInfoPage(statePlanet)));
                  },
                ),
                new Text(
                  "$_information",
                  style: new TextStyle(fontSize: 12, color: Colors.white70),
                  softWrap: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/// PlanetInfoPage is a activity which displays the information of a planet
/// in seperate activity.
class PlanetInfoPage extends StatelessWidget {
  final Planet _planet;
  String _info = "Planet information.";
  String _wikiLink = "https://wikipedia.org";
  PlanetInfoPage(this._planet) {
    assert(_planet != null);
	
	//THIS SECTION CAN BE OPTIMIZED.
	//I AM HARD CODING INFORMATION ABOUT EACH
	//PLANET. THIS DATA CAN BE READ FROM FILE OR
	//FETCHED FROM INTERNET SITES LIKE : https://wikipedia.org
    switch (_planet.id) {
      case Planets.ID_EARTH:
        _info = "Earth is suited for life habitat.";
        _wikiLink = "https://wikipedia.org/Earth";
        break;
      case Planets.ID_MARS:
        _info = "Mars is the most researched planet.";
        _wikiLink = "https://wikipedia.org/Mars";
        break;
      case Planets.ID_JUPITER:
        _info = "Jupiter is the biggest planet in our Solar System.";
        _wikiLink = "https://wikipedia.org/Jupiter";
        break;
      case Planets.ID_SATURN:
        _info =
            "Saturn is one of the gas giant in our Solar System with big rings.";
        _wikiLink = "https://wikipedia.org/Saturn";
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text(_planet.name)),
      backgroundColor: Color(50),
      body: new Container(
        child: new Column(
          //acts same as match_parent in native android development.
          mainAxisSize: MainAxisSize.max,
          children: [
            new Card(
              elevation: 6,
              child: new Container(
                color: Colors.indigo,
                child: Image.asset(_planet.src),
              ),
            ),
            new Card(
              elevation: 6,
              child: new Container(
                color: Colors.indigo,
                child: ScrollableTextView(
                    _info, Colors.white70, 24, FontStyle.normal),
              ),
            ),
            new Container(
              color: Colors.indigoAccent,
              child: new Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "References",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  new LinkLoader(_wikiLink)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
