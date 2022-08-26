import 'package:flutter/material.dart';
import 'package:online_posts/config/constants/pages_name.dart';
import 'package:online_posts/view/contact_page/home_page_components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton:
          HomePageComponents.homePageFloatingActionButton(context),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
