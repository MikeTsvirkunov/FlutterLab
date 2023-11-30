import 'package:flutter_test_project/app/body/profile_body/profile_page_block.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class BodyPageGenerator implements IStrategy {
  @override
  T execute<T>({List? params}) {
    List<Map<String, dynamic>> blocks = StandartContainerExtractor.extract(constantContainer, 'bodyList');
    return List.generate(blocks.length, (index) {
      return StdProfilePageBlock(
        title: blocks[index]['title'],
        description: blocks[index]['description'],
        child: blocks[index]['child']
      );
    }) as T;
  }
}
