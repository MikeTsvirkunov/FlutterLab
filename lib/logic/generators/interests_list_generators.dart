import 'package:flutter_test_project/app/body/profile_body/interests/interest_tag.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';

class InterestsListGenerator implements IStrategy {
  @override
  T execute<T>({List? params}) {
    return List.generate(params![0].length, (index) {
      return StdInterestTag(text: params[0][index]);
    }) as T;
  }
}
