import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';

interface class FormationRepository
    extends RepositoryInterface<String, FormationModel> {
  @override
  get dbm => throw UnimplementedError();

  @override
  Future<bool> delete(String t) {
    throw UnimplementedError();
  }

  @override
  Future<FormationModel> get(String t) {
    throw UnimplementedError();
  }

  @override
  Future<List<FormationModel>> getAll() {
    throw UnimplementedError();
  }

  @override
  Future<FormationModel> patch(FormationModel k) {
    throw UnimplementedError();
  }

  @override
  Future<FormationModel> put(FormationModel k) {
    throw UnimplementedError();
  }
}
