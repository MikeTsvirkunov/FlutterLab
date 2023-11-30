abstract class IStrategyAsync {
  Future<T> execute<T>({List? params});
}
