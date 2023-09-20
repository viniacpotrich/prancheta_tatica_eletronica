abstract class RepositoryInterface<T, K> {
  K get(T t);
  List<K> getAll();
  bool delete(K k);
  K put(K k);
  K patch(K k);
}
