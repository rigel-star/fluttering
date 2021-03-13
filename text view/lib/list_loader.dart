import 'package:flutter/material.dart';
import 'package:text_viewer/blog_card.dart';

import 'blog.dart';

class ListLoader {
  static ListView build(List<Blog> list) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return new BlogCard(list[index]);
    });
  }
}
