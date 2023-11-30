import 'package:flutter_test_project/logic/interfaces/iextendable.dart';

class StandartContainerExtender{
  static void extend(IExtandable container, Object key, dynamic value) {
    container.extend(key, value);
  }
}
