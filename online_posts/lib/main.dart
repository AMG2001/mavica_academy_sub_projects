import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:online_posts/config/constants/pages_name.dart';
import 'package:online_posts/config/pages_routes.dart';
import 'package:online_posts/view/contact_page/add_contact_page.dart';
import 'package:online_posts/view/contact_page/edit_contact_page.dart';
import 'package:online_posts/view/contact_page/home_page.dart';
import 'package:online_posts/view/contact_page/view_contact_page.dart';
import 'package:online_posts/view/posts_page/posts-page_cubit/posts_page_cubit.dart';
import 'firebase_options.dart';

void main(List<String> args) async {
  runApp(OnlinePostsApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class OnlinePostsApp extends StatelessWidget {
  const OnlinePostsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostsPageCubit>(
      create: (context) => PostsPageCubit(),
      child: MaterialApp(
        /**
         * routes are Stored in app_config folder
         */
        routes: routes,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        title: "Online posts",
      ),
    );
  }
}
