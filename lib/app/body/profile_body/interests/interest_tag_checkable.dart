import 'package:flutter/material.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/iaction.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';
import 'package:flutter_test_project/logic/variables/decorations.dart';
import 'package:flutter_test_project/logic/variables/functions.dart';
import 'package:flutter_test_project/logic/variables/variables.dart';

class StdInterestTagCheckable extends StatefulWidget {
  final String text;
  const StdInterestTagCheckable({Key? key, required this.text}) : super(key: key);
  @override
  State<StdInterestTagCheckable> createState() => _StdInterestTagCheckableState();
}

class _StdInterestTagCheckableState extends State<StdInterestTagCheckable> {
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      showCheckmark: false,
      backgroundColor: StandartContainerExtractor.extract(constantContainer, 'stdInterestTagBackGroundColor'),
      disabledColor: StandartContainerExtractor.extract(constantContainer, 'stdInterestTagBackGroundColor'),
      surfaceTintColor: StandartContainerExtractor.extract(constantContainer, 'stdInterestTagSelectedColor'),
      selectedColor: StandartContainerExtractor.extract(constantContainer, 'stdInterestTagSelectedColor'),
      selected: StandartContainerExtractor.extract<Map>(variableContainer, 'interestTagCheckedPair')[widget.text],
      shape: StandartContainerExtractor.extract(decorationsContainer, 'interestTagBorderShape'),
      side: StandartContainerExtractor.extract(decorationsContainer, 'interestTagBorderSide'),
      onSelected: (bool selected){
        var f = StandartContainerExtractor.extract<IStrategy>(funContainer, 'getInterestTagFunctionProcessor').execute<IAction>(params: [widget.text]);
        f.action(params: [widget.text]);
        setState(() {});
      },
      label: Text(
        widget.text,
        style: StandartContainerExtractor.extract<TextStyle>(constantContainer, 'standartInterestTagTextStyle'),
      )
    );
  }
}
