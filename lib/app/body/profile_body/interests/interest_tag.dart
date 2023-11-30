import 'package:flutter/material.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class StdInterestTag extends StatefulWidget {
  final String text;
  const StdInterestTag({Key? key, required this.text}) : super(key: key);
  @override
  State<StdInterestTag> createState() => _StdInterestTagState();
}

class _StdInterestTagState extends State<StdInterestTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'standartInterstTagMarging'),
      padding: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'standartInterstTagPadding'),
      decoration: StandartContainerExtractor.extract<BoxDecoration>(constantContainer, 'standartInterestTagDecoration'),
      child: Text(
        widget.text,
        style: StandartContainerExtractor.extract<TextStyle>(constantContainer, 'standartInterestTagTextStyle'),
      )
    );
  }
}
