import 'package:flutter/material.dart';
import 'package:online_posts/config/constants/pages_name.dart';

class HomePageComponents {
  // BuildContext context;
  // HomePageComponents({required this.context});
  static Widget homePageFloatingActionButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      /**
         * navigate to Add Contact Page
         */
      onPressed: () {
        Navigator.pushNamed(context, PagesName.addContaxtPageName);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Add Contact"),
          Icon(Icons.add),
        ],
      ),
    );
  }
}
