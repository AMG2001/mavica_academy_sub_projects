import 'package:flutter_bloc/flutter_bloc.dart';

part 'posts_page_state.dart';

class PostsPageCubit extends Cubit<PostsPageState> {
  PostsPageCubit() : super(PostsPageInitialState());
}
