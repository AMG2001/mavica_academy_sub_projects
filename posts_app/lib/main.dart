import 'package:flutter/material.dart';
import 'package:posts_app/contact_page/home_page.dart';
import 'package:posts_app/posts_page/posts_page.dart';

void main() {
  runApp(PostsApp());
}

class PostsApp extends StatelessWidget {
  const PostsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
