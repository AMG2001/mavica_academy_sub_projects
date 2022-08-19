import 'package:flutter/material.dart';
import 'package:online_posts/posts_page/posts_page.dart';

void main(List<String> args) {
  runApp(OnlinePostsApp());
}

class OnlinePostsApp extends StatelessWidget {
  const OnlinePostsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostsPage(),
      title: "Online posts",
    );
  }
}
