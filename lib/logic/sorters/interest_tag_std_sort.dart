import 'package:flutter_test_project/logic/interfaces/iaction.dart';

class InterestsTagStdSorter implements IAction {
  @override
  void action({List? params}) {
    params![0].sort(((a, b) => params[1][a]==true ? params[1][b] == true ? 0 : -1 : params[1][b] == true ? 1 : 0));
  }
}
