import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/ioc_container/default_strategy.dart';

class IoC{
  static IStrategy strategy =  DefaultStrategy();
  static T resolve<T>(Object key, {List? arg}){
    return strategy.execute<T>(params: arg);
  }
}