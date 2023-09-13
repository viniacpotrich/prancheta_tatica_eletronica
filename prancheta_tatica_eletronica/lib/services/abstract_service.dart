import 'package:uuid/uuid.dart';

abstract class AbstractService<T> {
  Future<List<T>> getAll() async {
    return [];
  }

  Future<T?> get(Uuid id) async {
    return null;
  }

  Future<bool> put() async {
    return true;
  }

  Future<bool> delete(Uuid id) async {
    return true;
  }
}
