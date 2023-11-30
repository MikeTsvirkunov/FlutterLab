import 'package:flutter_test_project/logic/interfaces/istrategy.dart';

class GetListOfInterests implements IStrategy {
  @override
  T execute<T>({List? params}) {
    return Future(() => ['Food', 'Technologis', 'Home', 'Science', 'Leisure', 'Self care', 'Self-develop']) as T;
  }
}
