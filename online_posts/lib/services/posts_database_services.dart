// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:lottie/lottie.dart';
// import 'package:online_posts/models/post_model.dart';
// import 'package:online_posts/view/posts_page/posts_page_components/post_container.dart';


// class PostsDataBaseServices {
//   /**
//     * data base url Obj
//     */
//   String _dataBaseUrl =
//       "https://online-posts-app-default-rtdb.europe-west1.firebasedatabase.app/posts.json";

// /**
//  * Upload New post Method
//  */
//   void uploadPost({
//     required String postTitle,
//     required String postDescription,
//     required String userImageUrl,
//   }) async {
//     /**
//          * 1- post data t database
//          */
//     await http
//         .post(
//       Uri.parse(_dataBaseUrl),
//       body: json.encode(
//         {
//           "postTitle": postTitle,
//           "postDescription": postDescription,
//           "userImageUrl": userImageUrl,
//           "like": 0,
//           "love": 0,
//           "dislike": 0,
//         },
//       ),
//     )
//         .then((postInfo) {
//       /**
//            * 2- get generated id
//            */
//       print(json.decode(postInfo.body)['name']);
//       /**
//        * 3- add post container with its data and also with generated id
//        */
//       // postsContainersList.add(
//       //   PostContainer(
//       //     postModel: PostModel(
//       //         postId: json.decode(postInfo.body)['name'],
//       //         postTitle: postTitle,
//       //         postDescription: postDescription,
//       //         userImageUrl: userImageUrl,
//       //         like: 0,
//       //         love: 0,
//       //         dislike: 0),
//       //   ),
//       // );
//       // notifyPostAdded();

//       // showDialog(
//       //   context: context,
//       //   builder: (context) {
//       //     return Container(
//       //       width: MediaQuery.of(context).size.width,
//       //       height: MediaQuery.of(context).size.height,
//       //       child: Center(
//       //         child: Lottie.asset(
//       //             "assets/animated_vectors/post_added_success_animation.json"),
//       //       ),
//       //     );
//       //   },
//       // );
//     });
//   }

// /**
//  * to fetch all posts from database :
//  */
//   Future<List<PostContainer>> fetchAllPosts() async {
//     List<PostContainer> list = [];
//     await http.get(Uri.parse(_dataBaseUrl)).then((value) {
//       Map<String, dynamic> fetchedPosts =
//           json.decode(value.body) as Map<String, dynamic>;
//       fetchedPosts.forEach((postId, postData) {
//         list.add(PostContainer(
//           postModel: PostModel(
//               postId: postId,
//               postTitle: postData['postTitle'],
//               postDescription: postData['postDescription'],
//               userImageUrl: postData['userImageUrl'],
//               like: postData['like'],
//               love: postData['love'],
//               dislike: postData['dislike']),
//         ));
//       });
//     });
//     return list;
//   }
// }
