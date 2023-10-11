import 'package:tactical_e_clipboard/model/parameter_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';

interface class ParameterRepository
    extends RepositoryInterface<String, ParameterModel> {
  @override
  get dbm => throw UnimplementedError();

  @override
  Future<bool> delete(String t) {
    throw UnimplementedError();
  }

  @override
  Future<ParameterModel> get(String t) {
    throw UnimplementedError();
  }

  @override
  Future<List<ParameterModel>> getAll() {
    throw UnimplementedError();
  }

  @override
  Future<ParameterModel> patch(ParameterModel k) {
    throw UnimplementedError();
  }

  @override
  Future<ParameterModel> put(ParameterModel k) {
    throw UnimplementedError();
  }
}
