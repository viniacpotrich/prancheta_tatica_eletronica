import 'package:tactical_e_clipboard/repository/repository.dart';

import '../app/app.locator.dart';

abstract class AbstractService<T, R, K extends RepositoryInterface<R, T>> {
  final repository = locator<K>();

  Future<List<T>> getAll() async {
    return repository.getAll();
  }

  Future<T?> get(R id) async {
    return repository.get(id);
  }

  Future<T> put(T t) async {
    return repository.put(t);
  }

  Future<T> update(T t) async {
    return repository.patch(t);
  }

  Future<bool> delete(R id) async {
    return repository.delete(id);
  }
}
