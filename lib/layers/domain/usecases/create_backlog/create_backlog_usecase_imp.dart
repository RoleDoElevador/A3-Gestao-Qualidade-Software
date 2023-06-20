// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/domain/repositories/create_backlog_repository.dart';

import 'create_backlog_usecase.dart';

class CreateBacklogUseCaseImp implements CreateBacklogUseCase {
  late CreateBacklogRepository _createBacklogRepository;
  CreateBacklogUseCaseImp(this._createBacklogRepository);

  @override
Future<bool> call(BackLogEntity backlog) async {
 bool request = await _createBacklogRepository(backlog);

   return request;
  }
}
