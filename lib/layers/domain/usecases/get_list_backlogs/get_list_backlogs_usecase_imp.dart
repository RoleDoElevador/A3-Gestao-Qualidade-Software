import 'package:dartz/dartz.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/domain/repositories/get_list_backlogs_repository.dart';

import 'get_list_backlogs_usecase.dart';

class GetListBacklogsUseCaseImp implements GetListBacklogsUseCase {
  final GetListBacklogsRepository _getListBacklogsRepository;
  GetListBacklogsUseCaseImp(this._getListBacklogsRepository);

  @override
  Future<Either<Exception, List<BackLogEntity>>> call() async {
    try {
      var request = await _getListBacklogsRepository();
      return request.fold((l) => Left(l), (r) => Right(r));
    } catch (e) {
      return Left(Exception());
    }
  }
}
