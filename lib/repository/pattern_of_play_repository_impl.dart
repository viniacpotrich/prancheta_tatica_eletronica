import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/repository/pattern_of_play_repository.dart';
import 'package:uuid/uuid.dart';

interface class PatternOfPlayRepositoryImpl implements PatternOfPlayRepository {
  @override
  bool delete(PatternOfPlayModel k) {
    throw UnimplementedError();
  }

  @override
  PatternOfPlayModel get(Uuid t) {
    throw UnimplementedError();
  }

  @override
  List<PatternOfPlayModel> getAll() {
    throw UnimplementedError();
  }

  @override
  PatternOfPlayModel patch(PatternOfPlayModel k) {
    throw UnimplementedError();
  }

  @override
  PatternOfPlayModel put(PatternOfPlayModel k) {
    throw UnimplementedError();
  }
}
