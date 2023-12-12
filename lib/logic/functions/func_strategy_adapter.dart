import 'package:flutter_test_project/logic/interfaces/istrategy.dart';

class FuncStrategyAdapter implements IStrategy {
  final Function strategy;
  const FuncStrategyAdapter(this.strategy);
  @override
  T execute<T>({List? params}) {
    return strategy(params) as T;
  }
}
