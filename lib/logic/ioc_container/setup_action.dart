import 'package:flutter_test_project/logic/interfaces/iaction.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/ioc_container/ioc_container.dart';

class SetupAction implements IAction{
  final IStrategy _newStrategy; 
  SetupAction(this._newStrategy);
  @override
  void action({List? params}) {
    IoC.strategy = _newStrategy;
  }
  
}