import '../../../../core/errors/api_error_model.dart';
import '../../../../core/utils/base_cubit.dart';
import '../../data/models/post_model.dart';
import '../../domain/use_cases/get_posts_use_case.dart';

part 'posts_state.dart';

class PostsCubit extends BaseCubit<PostsState> {
  final GetPostsUseCase _getPostsUseCase;

  static const _pageSize = 10;
  int _currentPage = 1;
  bool _isFetching = false;

  PostsCubit(this._getPostsUseCase) : super(PostsInitial());

  Future<void> fetchPosts({bool refresh = false}) async {
    if (_isFetching) return;

    if (refresh) {
      _currentPage = 1;
      emit(PostsLoading());
    } else if (state is PostsLoaded) {
      final current = state as PostsLoaded;
      if (!current.hasMore) return;
      emit(current.copyWith(isLoadingMore: true));
    } else {
      emit(PostsLoading());
    }

    _isFetching = true;

    final result = await _getPostsUseCase(
      GetPostsParams(page: _currentPage, limit: _pageSize),
    );

    result.fold(
      (error) => emit(PostsError(error)),
      (newPosts) {
        final existing = (state is PostsLoaded && !refresh)
            ? (state as PostsLoaded).posts
            : <PostModel>[];

        emit(PostsLoaded(
          posts: [...existing, ...newPosts],
          hasMore: newPosts.length == _pageSize,
        ));

        _currentPage++;
      },
    );

    _isFetching = false;
  }
}
