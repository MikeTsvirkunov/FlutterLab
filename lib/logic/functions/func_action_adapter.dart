import 'package:flutter_test_project/logic/interfaces/iaction.dart';

class FuncActionAdapter implements IAction {
  final Function strategy;
  const FuncActionAdapter(this.strategy);
  @override
  void action({List? params}) {
    strategy(params);
  }
}
