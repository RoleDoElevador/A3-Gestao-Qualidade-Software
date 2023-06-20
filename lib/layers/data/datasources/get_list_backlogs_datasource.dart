import 'package:dartz/dartz.dart';

import '../../domain/entities/backlog_entity.dart';

abstract class GetListBackLogsDatasource {
 Future<Either<Exception, List<BackLogEntity>>> call();

  
}