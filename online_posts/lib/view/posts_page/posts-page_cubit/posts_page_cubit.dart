import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_posts/services/posts_database_services.dart';

part 'posts_page_state.dart';

class PostsPageCubit extends Cubit<PostsPageState> {
  PostsPageCubit() : super(PostsPageInitialState());
}
