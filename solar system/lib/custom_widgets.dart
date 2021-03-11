import 'package:flutter/material.dart';

class ScrollableTextView extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontStyle fontStyle;
  ScrollableTextView(this.text, this.textColor, this.fontSize, this.fontStyle);
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: new Container(
        child: new Text(
          text,
          style: TextStyle(color: textColor, fontSize: fontSize),
        ),
      ),
    );
  }
}

class LinkLoader extends StatelessWidget {
  final String link;
  LinkLoader(this.link);
  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 5,
      child: Container(
        child: TextButton(
          onPressed: () {},
          child: Text(
            link,
            style: TextStyle(
                backgroundColor: Colors.white70,
                color: Colors.blue,
                decoration: TextDecoration.underline),
          ),
        ),
      ),
    );
  }
}
