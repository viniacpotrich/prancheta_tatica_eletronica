import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/repository/pattern_of_play_repository.dart';
import 'package:uuid/uuid.dart';

interface class PatternOfPlayRepositoryImpl implements PatternOfPlayRepository {
  @override
  bool delete(PatternOfPlayModel k) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  PatternOfPlayModel get(Uuid t) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  List<PatternOfPlayModel> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  PatternOfPlayModel patch(PatternOfPlayModel k) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  PatternOfPlayModel put(PatternOfPlayModel k) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
