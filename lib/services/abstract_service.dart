import 'package:tactical_e_clipboard/repository/repository.dart';
import '../app/app.locator.dart';

abstract class AbstractService<T, R, K extends RepositoryInterface<R, T>> {
  final _repository = locator<K>();

  Future<List<T>> getAll() async {
    return _repository.getAll();
  }

  Future<T?> get(R id) async {
    return _repository.get(id);
  }

  Future<T> put(T t) async {
    return _repository.put(t);
  }

  Future<T> update(T t) async {
    return _repository.patch(t);
  }

  Future<bool> delete(R id) async {
    return _repository.delete(id);
  }
}
