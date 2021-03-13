import 'package:flutter/material.dart';
import 'package:text_viewer/blog.dart';
import 'package:text_viewer/list_loader.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Blog> blogs = [
    new Blog("This is share information", "Title", "src", "2021/12/13"),
    new Blog("This is share information", "Title", "src", "2021/12/13"),
    new Blog("This is share information", "Title", "src", "2021/12/13"),
    new Blog("This is share information", "Title", "src", "2021/12/13")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Share Gyan",
      home: new Scaffold(
        appBar: null,
        body: new Container(
          child: ListLoader.build(blogs),
        ),
      ),
    );
  }
}
