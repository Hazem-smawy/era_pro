import 'package:dartz/dartz.dart';
import 'package:tailor/src/core/usecases/usecases.dart';
import 'package:tailor/src/features/store/domain/entities/store_entity.dart';

import '../../../../core/error/failures.dart';
import '../repositories/store_repositories.dart';

class AddUpdateItemUsecase extends ParamsUseCase<int, Params<ItemEntity>> {
  final StoreRepository storeRepository;

  AddUpdateItemUsecase({
    required this.storeRepository,
  });

  @override
  Future<Either<Failure, int>> call(params) async {
    return await storeRepository.addItem(params.data);
  }
}
