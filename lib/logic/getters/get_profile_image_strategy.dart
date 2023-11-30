import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter/services.dart' show rootBundle;

class GetProfileImageStrategy implements IStrategy{
  @override
  T execute<T>({List? params}) {
    return rootBundle.load('assets/avatar_photo.png') as T;
  }
}