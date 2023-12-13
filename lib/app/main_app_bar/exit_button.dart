import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class ExitButton extends StatefulWidget {
  final String imagePass;
  final Function() onPress;
  const ExitButton({Key? key, required this.imagePass, required this.onPress}): super(key: key);

  @override
  State<ExitButton> createState() => _ExitButtonState();
}

class _ExitButtonState extends State<ExitButton>{
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'exitButtonPaddings'),
      icon: SvgPicture.asset(widget.imagePass), 
      onPressed: widget.onPress,
    );
  }
}
