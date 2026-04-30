import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/api_error_model.dart';
import '../../../../core/errors/error_handler.dart';
import '../models/post_model.dart';
import 'base_posts_repo.dart';

class PostsRepository implements BasePostsRepository {
  final Dio _dio;

  PostsRepository(this._dio);

  @override
  Future<Either<ApiErrorModel, List<PostModel>>> getPosts({
    required int page,
    required int limit,
  }) async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/posts',
        queryParameters: {'_page': page, '_limit': limit},
      );

      final posts = (response.data ?? [])
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return Right(posts);
    } catch (e) {
      return Left(ApiErrorHandler.handle(e));
    }
  }
}
