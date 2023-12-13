import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/iaction.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/functions.dart';

class GetInterestTagFunctionProcessor extends IStrategy{
  @override
  T execute<T>({List? params}) {
    var p = StandartContainerExtractor.extract<Map>(funContainer, 'standartInterestTagTextOnSelectFunctionsPairs');
    var f = p.containsKey(params![0]) ? p[params[0]] : StandartContainerExtractor.extract<IAction>(funContainer, 'stdInterestTagOnSelectFunction');
    return f as T;
  }

}