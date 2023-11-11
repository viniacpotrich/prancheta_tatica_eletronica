abstract class RepositoryInterface<T, K> {
  get dbm;
  get logger;
  Future<K> get(T t);
  Future<List<K>> getAll();
  Future<bool> delete(T t);
  Future<K> put(K k);
  Future<K> patch(K k);
}
