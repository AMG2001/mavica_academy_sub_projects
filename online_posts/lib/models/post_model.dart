class PostModel {
  String id;
  String title;
  String description;
  String imageUrl;
  int like;
  int love;
  int dislike;
  PostModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.like,
      required this.love,
      required this.dislike});
}
