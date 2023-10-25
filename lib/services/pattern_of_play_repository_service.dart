import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/repository/pattern_of_play_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';

class PatternOfPlayRepositoryService implements PatternOfPlayRepository {
  @override
  DatabaseService get dbm => locator<DatabaseService>();

  @override
  Future<bool> delete(String k) {
    throw UnimplementedError();
  }

  @override
  Future<PatternOfPlayModel> get(String t) {
    throw UnimplementedError();
  }

  @override
  Future<List<PatternOfPlayModel>> getAll() {
    throw UnimplementedError();
  }

  @override
  Future<PatternOfPlayModel> patch(PatternOfPlayModel k) {
    throw UnimplementedError();
  }

  @override
  Future<PatternOfPlayModel> put(PatternOfPlayModel k) {
    throw UnimplementedError();
  }
}
