import 'package:flutter_test_project/app/body/profile_body/available_activity/available_activity_block.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class StandartAvailableActivityBlockBuilder implements IStrategy {
  @override
  T execute<T>({List? params}) {
    var availableActivityKeyProcessorPair = StandartContainerExtractor.extract<Map<String, IStrategy>>(constantContainer, 'availableActivityKeyProcessorPair');
    var availableActivityKeyImagePassPair = StandartContainerExtractor.extract<Map<String, String>>(constantContainer, 'availableActivityKeyImagePassPair');
    var stdProcessor = StandartContainerExtractor.extract<IStrategy>(constantContainer, 'stdProcessor');
    var stdAvailableActivityImagePass = StandartContainerExtractor.extract<String>(constantContainer, 'stdAvailableActivityImagePass');
    var data = params![0] as Map<String, dynamic>;
    var processedData = data.map(
      (key, value) => MapEntry(
        key, 
        availableActivityKeyProcessorPair.containsKey(key) 
        ? availableActivityKeyProcessorPair[key]!.execute(params: [data[key].toString()]) 
        : stdProcessor.execute(params: [data[key].toString()])
      )
    );
    return AvailableActivityBlock(
      imagePass: availableActivityKeyImagePassPair.containsKey(processedData['name']) 
        ? availableActivityKeyImagePassPair[processedData['name']]!
        : stdAvailableActivityImagePass, 
      name: processedData['name'], 
      extraText: processedData['extra_text'], 
      price: '${processedData["price"]} ${processedData['measure']}'
    ) as T;
  }
}
