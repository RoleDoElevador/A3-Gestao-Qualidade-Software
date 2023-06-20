import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:taks_management_app/core/database_instance.dart';
import 'package:taks_management_app/layers/data/datasources/get_list_backlogs_datasource.dart';

import '../../domain/entities/backlog_entity.dart';

part 'backlog_store.g.dart';

class BacklogStore = _BacklogStore with _$BacklogStore;

abstract class _BacklogStore with Store {

  final getListBacklogs = GetIt.instance.get<GetListBackLogsDatasource>();



  @observable
  late ObservableList<BackLogEntity> backLogEntityList;


}