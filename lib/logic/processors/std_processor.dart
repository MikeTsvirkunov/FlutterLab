import 'package:flutter_test_project/logic/interfaces/istrategy.dart';

class StdProcessor implements IStrategy{
  @override
  T execute<T>({List? params}) {
    return params![0] as T;
  }
}