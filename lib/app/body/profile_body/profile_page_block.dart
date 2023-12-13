import 'package:flutter/material.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class StdProfilePageBlock extends StatefulWidget {
  final String title;
  final String description;
  final Widget child;
  const StdProfilePageBlock({Key? key, required this.title, required this.description, required this.child}) : super(key: key);

  @override
  State<StdProfilePageBlock> createState() => _StdProfilePageBlockState();
}

class _StdProfilePageBlockState extends State<StdProfilePageBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'standartProfilePageBlockTitlePadding'),
          child: Text(
            widget.title,
            style: StandartContainerExtractor.extract(constantContainer, 'standartProfilePageBlockTitleStyle'),
          )
        ),
        Padding(
          padding: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'standartProfilePageBlockDescriptionPadding'),
          child: Text(
            widget.description,
            style: StandartContainerExtractor.extract(constantContainer, 'standartProfilePageBlockDescriptionStyle'),
          )
        ),
        widget.child
      ]
    );
  }
}
