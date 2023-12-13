import 'package:flutter_test_project/logic/interfaces/istrategy.dart';

class GetUserName implements IStrategy {
  @override
  T execute<T>({List? params}) {
    return 'Ekaterina' as T;
  }
}
