import 'package:dartz/dartz.dart';

import '../../../../core/errors/api_error_model.dart';
import '../models/post_model.dart';

abstract class BasePostsRepository {
  Future<Either<ApiErrorModel, List<PostModel>>> getPosts({
    required int page,
    required int limit,
  });
}
