import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';

interface class PatternOfPlayRepository
    extends RepositoryInterface<String, PatternOfPlayModel> {
  @override
  get dbm => throw UnimplementedError();

  @override
  Future<bool> delete(String t) {
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
