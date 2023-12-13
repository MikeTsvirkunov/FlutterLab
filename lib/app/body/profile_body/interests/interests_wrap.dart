import 'package:flutter/material.dart';
import 'package:flutter_test_project/logic/container/standart_container_extender.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/functions/func_action_adapter.dart';
import 'package:flutter_test_project/logic/interfaces/iaction.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';
import 'package:flutter_test_project/logic/variables/functions.dart';
import 'package:flutter_test_project/logic/variables/sizes.dart';
import 'package:flutter_test_project/logic/variables/variables.dart';

class InterestsWrap extends StatefulWidget {
  const InterestsWrap({Key? key}) : super(key: key);

  @override
  State<InterestsWrap> createState() => _InterestsWrap();
}

class _InterestsWrap extends State<InterestsWrap> {
  late List<String> data;
  @override
  void initState() {
    super.initState();
    data = List.from(StandartContainerExtractor.extract<Map<String, bool>>(variableContainer, 'interestTagCheckedPair').keys);
    StandartContainerExtender.extend(variableContainer, 'interestTagWrapUpdaterFunction', FuncActionAdapter((i){setState(() {
      var p = StandartContainerExtractor.extract<Map<String, bool>>(variableContainer, 'interestTagCheckedPair');
      var d = List<String>.from(p.keys);
      StandartContainerExtractor.extract<IAction>(funContainer, 'interestsTagStdSorter').action(params: [d, p]);
      data = d;
    });}));
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: StandartContainerExtractor.extract<EdgeInsets>(sizesContainer, 'wrapInterestTagsPadding'),
      child: Wrap(
        spacing: StandartContainerExtractor.extract<double>(sizesContainer, 'wrapInterestTagsSpacing'),
        children: StandartContainerExtractor.extract<IStrategy>(constantContainer, 'interestsListGenerator').execute<List<Widget>>(params: [data]),
      )
    );
  }
}
