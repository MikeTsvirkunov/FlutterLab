import 'package:flutter_test_project/logic/container/standart_container_extender.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/variables.dart';

class GetListOfInterests implements IStrategy {
  @override
  T execute<T>({List? params}) {
    var l = ['Food', 'Technologis', 'Home', 'Science', 'Leisure', 'Self care', 'Self-develop'];
    return Future(
      (){
        StandartContainerExtender.extend(variableContainer, 'interestTagCheckedPair', { for (var i in l) i : false });
        return l;
      }
    ) as T;
  }
}
