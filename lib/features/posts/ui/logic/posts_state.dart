part of 'posts_cubit.dart';

abstract class PostsState {}

class PostsInitial extends PostsState {}

class PostsLoading extends PostsState {}

class PostsLoaded extends PostsState {
  final List<PostModel> posts;
  final bool hasMore;
  final bool isLoadingMore;

  PostsLoaded({
    required this.posts,
    required this.hasMore,
    this.isLoadingMore = false,
  });

  PostsLoaded copyWith({
    List<PostModel>? posts,
    bool? hasMore,
    bool? isLoadingMore,
  }) =>
      PostsLoaded(
        posts: posts ?? this.posts,
        hasMore: hasMore ?? this.hasMore,
        isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      );
}

class PostsError extends PostsState {
  final ApiErrorModel error;
  PostsError(this.error);
}
