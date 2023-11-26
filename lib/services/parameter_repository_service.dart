import 'package:logger/logger.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/parameter_model.dart';
import 'package:tactical_e_clipboard/repository/parameter_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import '../ui/common/app_strings.dart';

class ParameterRepositoryService implements ParameterRepository {
  final _table = "Params";
  final _whereKey = "key = ?";

  @override
  DatabaseService get dbm => locator<DatabaseService>();

  @override
  get logger => Logger(
        printer: PrettyPrinter(),
      );

  @override
  Future<bool> delete(String k) {
    throw UnimplementedError();
  }

  @override
  Future<ParameterModel> get(String t) async {
    try {
      List<Map<String, dynamic>> results = await dbm.getInstanceDB().rawQuery(
        "SELECT * FROM $_table WHERE $_whereKey",
        [t],
      );
      if (results.isNotEmpty) {
        return await ParameterModel.fromMap(results.first);
      } else {
        throw Exception('$noRecordFoundForKey: $t');
      }
    } catch (e) {
      logger.e(genericErrorMessage, error: e);
      return ParameterModel(key: t, value: "");
    }
  }

  @override
  Future<List<ParameterModel>> getAll() async {
    try {
      var data = await dbm.getInstanceDB().query(_table);
      List<ParameterModel> result = [];
      for (var element in data) {
        result.add(await ParameterModel.fromMap(element));
      }
      return result;
    } catch (e) {
      logger.e(genericErrorMessage, error: e);
      return [];
    }
  }

  @override
  Future<ParameterModel> patch(ParameterModel k) async {
    try {
      await dbm.getInstanceDB().update(
        _table,
        k.toMap(),
        where: _whereKey,
        whereArgs: [k.key],
      );
    } catch (e) {
      logger.e(genericErrorMessage, error: e);
    }
    return k;
  }

  @override
  Future<ParameterModel> put(ParameterModel k) {
    throw UnimplementedError();
  }
}
