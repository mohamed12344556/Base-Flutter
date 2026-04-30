import 'package:dartz/dartz.dart';

import '../../../../core/errors/api_error_model.dart';
import '../../data/models/post_model.dart';
import '../../data/repo/base_posts_repo.dart';

class GetPostsParams {
  final int page;
  final int limit;

  const GetPostsParams({required this.page, required this.limit});
}

class GetPostsUseCase {
  final BasePostsRepository _repository;

  GetPostsUseCase(this._repository);

  Future<Either<ApiErrorModel, List<PostModel>>> call(
    GetPostsParams params,
  ) => _repository.getPosts(page: params.page, limit: params.limit);
}
