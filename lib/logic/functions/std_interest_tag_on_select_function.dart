import 'package:flutter_test_project/logic/container/standart_container_extender.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/iaction.dart';
import 'package:flutter_test_project/logic/variables/variables.dart';

class StdInterestTagOnSelectFunction extends IAction{

  @override
  void action({List? params}) {
    var p = StandartContainerExtractor.extract<Map>(variableContainer, 'interestTagCheckedPair');
    p[params![0]] = !p[params[0]];
    StandartContainerExtender.extend(variableContainer, 'interestTagCheckedPair', p);
    StandartContainerExtractor.extract<IAction>(variableContainer, 'interestTagWrapUpdaterFunction').action();
  }
}