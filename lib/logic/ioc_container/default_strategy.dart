import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/ioc_container/setup_action.dart';

class DefaultStrategy implements IStrategy{
  @override
  T execute<T>({List? params}) {
    switch (params![0]) {
      case 'setupStrategy':
        return SetupAction(params[1]) as T;
      case 'defaultStrategy':
        return DefaultStrategy() as T;
      default:
        throw Exception('No key ${params[0]} in IoC');
    }
  }

}