import 'package:dartz/dartz.dart';
import '../entities/auth_response_entity.dart';

import '../../../../core/error/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponseEntity>> auth(
      {required username, required password});
}
