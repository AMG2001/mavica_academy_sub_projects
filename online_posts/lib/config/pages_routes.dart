import 'package:flutter/cupertino.dart';
import 'package:online_posts/config/constants/pages_name.dart';
import 'package:online_posts/view/contact_page/add_contact_page.dart';
import 'package:online_posts/view/contact_page/edit_contact_page.dart';
import 'package:online_posts/view/contact_page/home_page.dart';
import 'package:online_posts/view/contact_page/view_contact_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  PagesName.homePageName: (context) => HomePage(),
  PagesName.addContaxtPageName: (context) => AddContactPage(),
  PagesName.viewContactPageName: (context) => ViewContactPage(),
  PagesName.editContactPageName: (context) => EditContactPage()
};
