import 'package:flutter_test_project/logic/interfaces/istrategy.dart';

class GetListOfAvailableActivity implements IStrategy {
  @override
  T execute<T>({List? params}) {
    return Future(() => [
      {
        'name': 'СберПрайм',
        'extra_text': 'Платёж 9 июля',
        'price': 199,
        'measure': '₽ в месяц'
      }, 
      {
        'name': 'Переводы',
        'extra_text': 'Автопродление 21 августа',
        'price': 199,
        'measure': '₽ в месяц'
      }
    ]) as T;
  }
}
