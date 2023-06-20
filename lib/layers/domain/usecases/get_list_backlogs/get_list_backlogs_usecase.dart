import 'package:dartz/dartz.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';

abstract class GetListBacklogsUseCase {
  Future<Either<Exception, List<BackLogEntity>>> call();
}
