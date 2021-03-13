import 'package:flutter/material.dart';
import 'package:text_viewer/blog.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;
  BlogCard(this.blog);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        child: new Column(
          children: [Text(blog.title), Text(blog.info), Text(blog.date)],
        ),
      ),
    );
  }
}
