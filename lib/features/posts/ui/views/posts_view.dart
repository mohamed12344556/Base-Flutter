import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text.dart';
import '../logic/posts_cubit.dart';
import '../widgets/post_card.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
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
    return Scaffold(
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
              child: CircularProgressIndicator(color: Color(0xFF2F98D7)),
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
                      state.error.rawError ?? state.error.message,
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
                padding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                itemCount:
                    state.posts.length + (state.isLoadingMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == state.posts.length) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: const Center(
                        child: CircularProgressIndicator(
                            color: Color(0xFF2F98D7)),
                      ),
                    );
                  }
                  return PostCard(post: state.posts[index]);
                },
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
