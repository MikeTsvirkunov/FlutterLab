import 'package:flutter_test_project/logic/interfaces/iextractable.dart';

class StandartContainerExtractor {
  static T extract<T>(IExtractable container, Object key){
    return container.extract<T>(key);
  }
}