import 'package:get_it/get_it.dart';
import 'package:taks_management_app/core/database_instance.dart';
import 'package:taks_management_app/layers/data/datasources/create_backlog_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/create_task_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/delete_backlog_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/delete_task_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/get_list_backlogs_datasource.dart';
import 'package:taks_management_app/layers/data/datasources/local/create_backlog_datasource_imp.dart';
import 'package:taks_management_app/layers/data/datasources/local/create_task_datasource_imp.dart';
import 'package:taks_management_app/layers/data/datasources/local/delete_backlog_datasource_imp.dart';
import 'package:taks_management_app/layers/data/datasources/local/delete_task_datasource_imp.dart';
import 'package:taks_management_app/layers/data/datasources/local/get_list_backlogs_datasource_imp.dart';
import 'package:taks_management_app/layers/data/repositories/create_backlog_repository_imp.dart';
import 'package:taks_management_app/layers/data/repositories/create_task_repository_imp.dart';
import 'package:taks_management_app/layers/data/repositories/delete_backlog_repository_imp.dart';
import 'package:taks_management_app/layers/data/repositories/delete_task_repository_imp.dart';
import 'package:taks_management_app/layers/data/repositories/get_list_backlogs_repository_imp.dart';
import 'package:taks_management_app/layers/domain/repositories/create_backlog_repository.dart';
import 'package:taks_management_app/layers/domain/repositories/create_task_repository.dart';
import 'package:taks_management_app/layers/domain/repositories/delete_backlog_repository.dart';
import 'package:taks_management_app/layers/domain/repositories/delete_task_repository.dart';
import 'package:taks_management_app/layers/domain/repositories/get_list_backlogs_repository.dart';
import 'package:taks_management_app/layers/domain/usecases/create_backlog/create_backlog_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/create_backlog/create_backlog_usecase_imp.dart';
import 'package:taks_management_app/layers/domain/usecases/create_task/create_task_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/create_task/create_task_usecase_imp.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_backlog/delete_backlog_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_backlog/delete_backlog_usecase_imp.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_task/delete_task_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/delete_task/delete_task_usecase_imp.dart';
import 'package:taks_management_app/layers/domain/usecases/get_list_backlogs/get_list_backlogs_usecase.dart';
import 'package:taks_management_app/layers/domain/usecases/get_list_backlogs/get_list_backlogs_usecase_imp.dart';
import 'package:taks_management_app/layers/presentation/controllers/detail_backlog/backlog_detail_controller.dart';
import 'package:taks_management_app/layers/presentation/controllers/home/home_controller.dart';
import 'package:taks_management_app/layers/presentation/stores/backlog_store.dart';

class Inject {

  static initialize() {
    GetIt getIt = GetIt.instance;

    // CORE
    getIt.registerLazySingleton(() => DataBaseInstance());

    //DATASOURCES
    getIt.registerLazySingleton<GetListBackLogsDatasource>(() => GetListBacklogsDatasourceImp(dataBaseInstance: getIt()));
    getIt.registerLazySingleton<CreateBacklogDatasource>(() => CreateBacklogDataSourceImp(dataBaseInstance: getIt()));
    getIt.registerLazySingleton<DeleteBacklogDataSource>(() => DeleteBacklogDataSourceImp());

    getIt.registerLazySingleton<CreateTaskDatasource>(() => CreateTaskDatasourceImp());
    getIt.registerLazySingleton<DeleteTaskDataSource>(() => DeleteTaskDataSourceImp());

    //REPOSITORIES
    getIt.registerLazySingleton<GetListBacklogsRepository>(() => GetListBackLogsRepositoryImp(getIt()));
    getIt.registerLazySingleton<CreateBacklogRepository>(() => CreateBacklogRepositoryImp(getIt()));
    getIt.registerLazySingleton<DeleteBacklogRepository>(() => DeleteBacklogRepositoryImp(getIt()));

    getIt.registerLazySingleton<CreateTaskRepository>(() => CreateTaskRepositoryImp(getIt()));
    getIt.registerLazySingleton<DeleteTaskRepository>(() => DeleteTaskRepositoryImp(getIt()));


    //USECASES
    getIt.registerLazySingleton<GetListBacklogsUseCase>(() => GetListBacklogsUseCaseImp(getIt()));
    getIt.registerLazySingleton<CreateBacklogUseCase>(() => CreateBacklogUseCaseImp(getIt()));
    getIt.registerLazySingleton<DeleteBacklogUseCase>(() => DeleteBacklogUseCaseImp(getIt()));

    getIt.registerLazySingleton<CreateTaskUseCase>(() => CreateTaskUseCaseImp(getIt()));
    getIt.registerLazySingleton<DeleteTaskUseCase>(() => DeleteTaskUseCaseImp(getIt()));

    //CONTROLLERS
    getIt.registerLazySingleton<HomePageController>(() => HomePageController());
    getIt.registerLazySingleton<BackLogDetailPageController>(() => BackLogDetailPageController());

    //MOBX STORES

    getIt.registerSingleton<BacklogStore>(BacklogStore());
  }
}