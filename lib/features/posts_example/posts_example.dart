// ============================================================
// posts_example.dart — Self-contained paginated list example
//
// Uses JSONPlaceholder (free, no auth) to fetch /posts?_page=&_limit=
//
// Structure inside this single file:
//   1. PostModel          — data model
//   2. PostsState         — cubit states
//   3. PostsCubit         — business logic + pagination
//   4. PostsExampleView   — the screen (use as initialRoute or push to it)
//   5. _PostCard          — item widget
// ============================================================

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/widgets/custom_button.dart';
import '../../core/widgets/custom_text.dart';

// ─────────────────────────────────────────────
// 1. Model
// ─────────────────────────────────────────────

class PostModel {
  final int id;
  final int userId;
  final String title;
  final String body;

  const PostModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json['id'] as int,
        userId: json['userId'] as int,
        title: json['title'] as String,
        body: json['body'] as String,
      );
}

// ─────────────────────────────────────────────
// 2. States
// ─────────────────────────────────────────────

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
  final String message;
  PostsError(this.message);
}

// ─────────────────────────────────────────────
// 3. Cubit
// ─────────────────────────────────────────────

class PostsCubit extends Cubit<PostsState> {
  PostsCubit() : super(PostsInitial());

  static const _baseUrl = 'https://jsonplaceholder.typicode.com';
  static const _pageSize = 10;

  final Dio _dio = Dio(BaseOptions(baseUrl: _baseUrl));

  int _currentPage = 1;
  bool _isFetching = false;

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

    try {
      final response = await _dio.get<List<dynamic>>(
        '/posts',
        queryParameters: {
          '_page': _currentPage,
          '_limit': _pageSize,
        },
      );

      final data = response.data ?? [];
      final newPosts = data
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList();

      final existing =
          (state is PostsLoaded && !refresh)
              ? (state as PostsLoaded).posts
              : <PostModel>[];

      emit(PostsLoaded(
        posts: [...existing, ...newPosts],
        hasMore: newPosts.length == _pageSize,
      ));

      _currentPage++;
    } on DioException catch (e) {
      emit(PostsError(e.message ?? 'Network error'));
    } catch (e) {
      emit(PostsError(e.toString()));
    } finally {
      _isFetching = false;
    }
  }
}

// ─────────────────────────────────────────────
// 4. View
// ─────────────────────────────────────────────

class PostsExampleView extends StatelessWidget {
  const PostsExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PostsCubit()..fetchPosts(),
      child: const _PostsBody(),
    );
  }
}

class _PostsBody extends StatefulWidget {
  const _PostsBody();

  @override
  State<_PostsBody> createState() => _PostsBodyState();
}

class _PostsBodyState extends State<_PostsBody> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<PostsCubit>().fetchPosts();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (_, _) => Scaffold(
        backgroundColor: const Color(0xFFF5F7FA),
        appBar: AppBar(
          title: const CustomText.titleLg('Posts'),
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF1A1A2E),
          elevation: 0,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(height: 1, color: const Color(0xFFE8ECF0)),
          ),
        ),
        body: BlocBuilder<PostsCubit, PostsState>(
          builder: (context, state) {
            if (state is PostsLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Color(0xFF2F98D7),
                ),
              );
            }

            if (state is PostsError) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.all(24.r),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.error_outline,
                          size: 56.r, color: Colors.redAccent),
                      SizedBox(height: 16.h),
                      CustomText.bodyMd(
                        state.message,
                        textAlign: TextAlign.center,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 24.h),
                      CustomButton(
                        text: 'Retry',
                        width: 140.w,
                        onPressed: () =>
                            context.read<PostsCubit>().fetchPosts(refresh: true),
                      ),
                    ],
                  ),
                ),
              );
            }

            if (state is PostsLoaded) {
              return RefreshIndicator(
                color: const Color(0xFF2F98D7),
                onRefresh: () =>
                    context.read<PostsCubit>().fetchPosts(refresh: true),
                child: ListView.builder(
                  controller: _scrollController,
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.w, vertical: 12.h),
                  itemCount: state.posts.length + (state.hasMore ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == state.posts.length) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: Color(0xFF2F98D7),
                          ),
                        ),
                      );
                    }
                    return _PostCard(post: state.posts[index]);
                  },
                ),
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────
// 5. Item Widget
// ─────────────────────────────────────────────

class _PostCard extends StatelessWidget {
  final PostModel post;

  const _PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.r,
              height: 40.r,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF2F98D7), Color(0xFF73CBFF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Center(
                child: CustomText(
                  '${post.id}',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.titleSm(
                    post.title,
                    color: const Color(0xFF1A1A2E),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6.h),
                  CustomText.bodyMd(
                    post.body,
                    color: const Color(0xFF6B7280),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Icon(Icons.person_outline,
                          size: 13.r, color: const Color(0xFF9CA3AF)),
                      SizedBox(width: 4.w),
                      CustomText.caption(
                        'User ${post.userId}',
                        color: const Color(0xFF9CA3AF),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
