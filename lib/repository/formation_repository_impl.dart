import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/repository/formation_repository.dart';
import 'package:uuid/uuid.dart';

interface class FormationRepositoryImpl implements FormationRepository {
  @override
  bool delete(FormationModel k) {
    throw UnimplementedError();
  }

  @override
  FormationModel get(Uuid t) {
    throw UnimplementedError();
  }

  @override
  List<FormationModel> getAll() {
    throw UnimplementedError();
  }

  @override
  FormationModel patch(FormationModel k) {
    throw UnimplementedError();
  }

  @override
  FormationModel put(FormationModel k) {
    throw UnimplementedError();
  }
}
