import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_posts/models/post_model.dart';

class PostContainer extends StatelessWidget {
  PostModel postModel;
  PostContainer({required this.postModel});

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
                  backgroundImage: NetworkImage(postModel.userImageUrl),
                  radius: 45,
                ),
                SizedBox(width: 16),
                /**
                         * Post Title
                         */
                Text(
                  postModel.postTitle,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
            /**
                     * Post Description
                     */
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(postModel.postDescription),
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
                      onPressed: () {},
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
