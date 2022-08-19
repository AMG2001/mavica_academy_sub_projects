import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostContainer extends StatelessWidget {
  /**
   * post title taken from bottom sheet
   */
  String postTitle;
  /**
   * post description taken from bottom sheet
   */
  String postDescription;
  /**
   * image link taken from  user login data
   */
  String userImageLink;
  /**
   * likes value come from firestore
   */
  int like;
  /**
   * love value come from firestore
   */
  int love;
  /**
   * disLike value come from firestore
   */
  int disLike;
  /**
   * postIndex value come from firestore
   */
  int postIndex;
  /**
   * documentId value come from firestore
   */
  String postDocumentId;

  PostContainer({
    /**
     * postTitle from bottom sheet
     */
    required this.postTitle,
    /**
     * postDescription from bottom sheet
     */
    required this.postDescription,
    /**
     * userImage from login user Data
     */
    this.userImageLink = "",
    this.like = 0,
    this.love = 0,
    this.disLike = 0,
    /**
     * Post Index fotm lastPostIndex Collection
     */
    required this.postIndex,
    /**
     * postDocuemntId from posts Collection
     */
    required this.postDocumentId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      /**
       * Outer side Container
       */
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(children: [
            /**
               * Row Contain user image - post title
               */
            Row(
              children: [
                /**
                         * Post User
                         */
                CircleAvatar(
                  backgroundImage: NetworkImage(userImageLink),
                  radius: 45,
                ),
                SizedBox(width: 16),
                /**
                         * Post Title
                         */
                Text(
                  postTitle,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
            /**
                     * Post Description
                     */
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(postDescription),
            ),
            /**
                     * Row Of Reactions
                     */
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /**
                   * Likes Column
                   */
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /**
                       * Likes button
                       */
                    IconButton(
                      onPressed: () {
                        // PostsPageFireStore()
                        //     .postsCollection
                        //     .doc(postDocumentId)
                        //     .update({'like': like + 1});
                      },
                      icon: FaIcon(FontAwesomeIcons.thumbsUp,
                          color: Colors.blueAccent),
                    ),
                    /**
                       * Likes Counter
                       */
                    Text(
                     "0",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                /**
                   * Love Column
                   */
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /**
                       * Love Icon Button
                       */
                    IconButton(
                      /**
                         * love button Action
                         */
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.heartCirclePlus,
                          color: Colors.red),
                    ),
                    /***
                       * love Counter
                       */
                    Text(
                      "0",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.thumbsDown,
                          color: Colors.black),
                    ),
                    Text(
                      "0",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
