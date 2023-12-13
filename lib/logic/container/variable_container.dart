import 'package:flutter_test_project/logic/interfaces/iextendable.dart';
import 'package:flutter_test_project/logic/interfaces/iextractable.dart';

class VariableContainer implements IExtractable, IExtandable{
  late Map<Object, dynamic> container;
  VariableContainer(this.container);
  @override
  T extract<T>(Object key) {
    if (container.containsKey(key)) {
      return container[key] as T;
    } else {
      throw Exception('No key $key in container VariableContainer');
    }
  }
  @override
  void extend(Object key, value) {
    container[key] = value;
  }
}