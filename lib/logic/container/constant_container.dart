import 'package:flutter_test_project/logic/interfaces/iextractable.dart';

class ConstantContainer implements IExtractable{
  late Map<Object, dynamic> container;
  ConstantContainer(this.container);
  @override
  T extract<T>(Object key) {
    if (container.containsKey(key)) {
      return container[key] as T;
    } else {
      throw Exception('No key $key in container ConstantContainer');
    }
  }
}