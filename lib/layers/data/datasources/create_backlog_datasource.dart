import 'package:dartz/dartz.dart';

import '../../domain/entities/backlog_entity.dart';

abstract class CreateBacklogDatasource {
  Future<bool> call(BackLogEntity backlog);
}

