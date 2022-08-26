import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_posts/services/posts_database_services.dart';
import 'package:online_posts/view/posts_page/posts-page_cubit/posts_page_cubit.dart';

void showPostsPageBottomSheet(
    {context,
    formGlobalKey,
    postTitleController,
    postDescriptionController}) async {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        /**
         * Bottom keyboard padding
         */
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            child: Form(
              key: formGlobalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  /**
                   * small top sliding sheet Widget
                   */
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey,
                    ),
                    width: MediaQuery.of(context).size.width * .1,
                    height: MediaQuery.of(context).size.height * .005,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  /**
                   * Post Title TextField
                   */
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextFormField(
                      controller: postTitleController,
                      validator: (data) {
                        if (data == null || data == "") {
                          return "you can't leave this field empty !!";
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        labelText: 'Post Title',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  /**
                   * Post Description Text Field
                   */
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: TextFormField(
                      controller: postDescriptionController,
                      validator: (data) {
                        if (data == null || data == "") {
                          return "you can't leave this field empty !!";
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        labelText: 'Post Description',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  /**
                   * Adding post button
                   */
                  BlocListener<PostsPageCubit, PostsPageState>(
                    listener: (context, state) {
                      // BlocProvider.of<PostsPageCubit>(context)
                      //     .notifyPostAdded();
                    },
                    child: ElevatedButton(
                        onPressed: () async {
                          if (formGlobalKey.currentState!.validate()) {
                            try {
                              /**
                                              * Add new Post with new Index to FireStore
                                              */
                              // PostsDataBaseServices().uploadPost(
                              //   postTitle: postTitleController.text,
                              //   postDescription: postDescriptionController.text,
                              //   userImageUrl:
                              //       "https://drive.google.com/file/d/1bqv-C_zlsuEiTjlPvRf4RhBbPAk-9Z0H/view?usp=sharing",
                              // );

                              print(
                                  "*************************************************\n \t\t\t\t\t\t Post Added successfully\n********************************************");
                            } catch (e) {
                              print(
                                  "error is while uploading post to fireStore");
                              print(e);
                            }
                          }
                        },
                        child: Text("Add Post +")),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
