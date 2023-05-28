import 'package:http/http.dart';
import 'package:tasks_flutter_one/features/home/data/model/task_vo.dart';
import 'dart:convert';
import '../datasource/home_task_datasource.dart';

class HomeRepository {
  HomeTaskRemoteDataSource _homeTaskRemoteDataSource =
      HomeTaskRemoteDataSource();

  Future<Response> saveTask(TaskVO taskVO) {
    return _homeTaskRemoteDataSource.insert(jsonEncode(taskVO.toJson()));
  }
}
