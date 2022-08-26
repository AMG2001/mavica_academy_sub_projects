import 'package:firebase_database/firebase_database.dart';

class PostModel {
  late String postId;
  late String postTitle;
  late String postDescription;
  late String userImageUrl;
  late int like;
  late int love;
  late int dislike;
/**
 * Default Constructor
 */
  PostModel(
      {required this.postTitle,
      required this.postDescription,
      required this.userImageUrl,
      required this.like,
      required this.love,
      required this.dislike});
  /**
       * Constructor with id
       */
  PostModel.withId(
      {required this.postId,
      required this.postTitle,
      required this.postDescription,
      required this.userImageUrl,
      required this.like,
      required this.love,
      required this.dislike});

/**
 * Convert Snapshot to PostModel
 */
  PostModel.fromSnapshot(DataSnapshot snapshot) {
    final postData = snapshot.value as Map<String, dynamic>;
    this.postId = snapshot.key!;
    this.postTitle = postData['postTitle'];
    this.postDescription = postData['postDescription'];
    this.userImageUrl = postData['userImageUrl'];
    this.like = postData['like'];
    this.love = postData['love'];
    this.dislike = postData['dislike'];
  }

  /**
   * Convert PostModel to Json
   */
  Map<String, dynamic> toJson() {
    return {
      'postTitle': this.postTitle,
      'postDescription': this.postDescription,
      'userImageUrl': this.userImageUrl,
      'like': this.like,
      'love': this.love,
      'dislike': this.dislike
    };
  }

/**
 * Getters
 */
  get getPostId => this.postId;
  get getPostDescription => this.postDescription;
  get getPostTitle => this.postTitle;
  get getUserImageUrl => this.userImageUrl;
  get getLike => this.like;
  get getLove => this.love;
  get getDislike => this.dislike;
  /**
           * Setters
           */
  set setPostId(postId) => this.postId = postId;
  set setPostTitle(postTitle) => this.postTitle = postTitle;
  set setPostDescription(postDescription) =>
      this.postDescription = postDescription;
  set setUserImageUrl(userImageUrl) => this.userImageUrl = userImageUrl;
  set setLike(like) => this.like = like;
  set setLove(love) => this.love = love;
  set setDislike(dislike) => this.dislike = dislike;
}
