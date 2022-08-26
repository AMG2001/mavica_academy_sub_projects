import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:online_posts/services/posts_database_services.dart';
import 'package:online_posts/view/posts_page/posts-page_cubit/posts_page_cubit.dart';

class PostsPage extends StatelessWidget {
  @override
  GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();
  TextEditingController postTitleController = TextEditingController();
  TextEditingController postDescriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () async {
          /**
               * bottom sheet Functionallity imported from postsPageComponets
               */
          // showPostsPageBottomSheet(
          //   context: context,
          //   formGlobalKey: formGlobalKey,
          //   postTitleController: postTitleController,
          //   postDescriptionController: postDescriptionController,
          // );
        },
        child:
            /**
             * Add New Post Button
             */
            Row(
          mainAxisSize: MainAxisSize.min,
          children: [Text("Add New Post"), Icon(Icons.add)],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text("Posts page"),
      ),
      body: SafeArea(child: BlocBuilder(
        builder: ((context, state) {
          if (state is PostsPageInitialState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PostsPageLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Text("There is an error while fetching Posts !!"),
            );
          }
        }),
      )),
    );
  }
}

/**
 * BlocBuilder<PostsPageCubit, PostsPageState>(
          builder: (context, state) {
            if (state is PostsPageInitialState) {
              return ListView(
                children: BlocProvider.of<PostsPageCubit>(context)
                    .postsContainersList,
              );
            }
            if (state is LoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is PostAddedState) {
              return ListView(
                children: BlocProvider.of<PostsPageCubit>(context)
                    .postsContainersList,
              );
            } else {
              return const Center(
                child: Text("Error While adding post"),
              );
            }
          },
        ),
 */