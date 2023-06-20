import 'package:dartz/dartz.dart';

import '../entities/backlog_entity.dart';

abstract class CreateBacklogRepository {
  Future<bool> call(BackLogEntity backlog);
}
