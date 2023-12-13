import 'package:flutter/material.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class AvailableActivityListGenerator implements IStrategy {
  @override
  T execute<T>({List? params}) {
    var stdAvailableActivityBlockBuilder = StandartContainerExtractor.extract<IStrategy>(constantContainer, 'stdAvailableActivityBlockBuilder');
    return List.generate(params![0].length, (index){
      var k = stdAvailableActivityBlockBuilder.execute<Widget>(params: [params[0][index]]);
      return k;
    }) as T;
  }
}
