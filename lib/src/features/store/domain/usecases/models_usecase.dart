import 'package:dartz/dartz.dart';
import 'package:tailor/src/features/store/data/models/model_category_model.dart';
import 'package:tailor/src/features/store/data/models/th_models_model.dart';

import '../repositories/store_repositories.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';

class AddThModelsUsecase {
  StoreRepository storeRepository;

  AddThModelsUsecase({required this.storeRepository});
  Future<void> call(ThModelsModel m) {
    return storeRepository.addThModel(m);
  }
}

class UpdateThModelsUsecase {
  StoreRepository storeRepository;

  UpdateThModelsUsecase({required this.storeRepository});
  Future<void> call(ThModelsModel m) {
    return storeRepository.updateThModel(m);
  }
}

class GetAllThModelsUsecase {
  StoreRepository storeRepository;

  GetAllThModelsUsecase({required this.storeRepository});
  Future<List<ThModelsModel>> call() {
    return storeRepository.getAllThModels();
  }
}
