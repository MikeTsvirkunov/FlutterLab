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
    return Padding(
      padding: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'standartInterstTagMarging'),
      child: InkWell(
        borderRadius: StandartContainerExtractor.extract<BoxDecoration>(constantContainer, 'standartInterestTagDecoration').borderRadius as BorderRadius,
        onTap: () {},
        radius: 20,
        child: Ink(
          padding: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'standartInterstTagPadding'),
          decoration: StandartContainerExtractor.extract<BoxDecoration>(constantContainer, 'standartInterestTagDecoration'),
          child: Text(
            widget.text,
            style: StandartContainerExtractor.extract<TextStyle>(constantContainer, 'standartInterestTagTextStyle'),
          )
        )
      )
    );
  }
}
