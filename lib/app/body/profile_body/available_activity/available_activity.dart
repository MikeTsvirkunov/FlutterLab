import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/future_loading_stub.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class AvailableActivity extends StatefulWidget {
  const AvailableActivity({Key? key}) : super(key: key);

  @override
  State<AvailableActivity> createState() => _AvailableActivityState();
}

class _AvailableActivityState extends State<AvailableActivity> {
  late Future<List> data;
  @override
  void initState() {
    super.initState();
    data = StandartContainerExtractor.extract<IStrategy>(constantContainer, 'getListOfAvailableActivity').execute();
  }
  @override
  Widget build(BuildContext context) {
    var availableActivityListGenerator = StandartContainerExtractor.extract<IStrategy>(constantContainer, 'availableActivityListGenerator');
    return FutureBuilder(
      future: data, 
      builder: (context, snapshot){
        if (snapshot.hasData){
          var seq = availableActivityListGenerator.execute<List<Widget>>(params: [snapshot.data]);
          return SizedBox(
            height: StandartContainerExtractor.extract<double>(constantContainer, 'availaibleActivityBlockHeight'),
            child: ListView.separated(
              padding: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'availableActivityPadding'),
              addRepaintBoundaries: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => seq[index],
              separatorBuilder: (context, index) => SizedBox(width: StandartContainerExtractor.extract<double>(constantContainer, 'availableActivitySpacer'),),
              itemCount: seq.length,
            )
          );
        } else {
          return const FutureLoadingStub();
        } 
      }
    );
  }
}
