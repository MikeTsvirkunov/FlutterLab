import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';
import 'package:flutter_test_project/logic/variables/sizes.dart';

class AvailableActivityBlock extends StatefulWidget {
  final String imagePass;
  final String name;
  final String extraText;
  final String price;
  const AvailableActivityBlock({Key? key, required this.imagePass, required this.name, required this.extraText, required this.price}) : super(key: key);

  @override
  State<AvailableActivityBlock> createState() => _AvailableActivityBlockState();
}

class _AvailableActivityBlockState extends State<AvailableActivityBlock> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: StandartContainerExtractor.extract<double>(sizesContainer, 'availaibleActivityBlockWidth')
      ),
        child: InkWell(
          borderRadius: StandartContainerExtractor.extract<BoxDecoration>(constantContainer, 'availaibleActivityBlockDecoration').borderRadius as BorderRadius,
          onTap: (){},
          child: Ink(
        height: StandartContainerExtractor.extract<double>(sizesContainer, 'availaibleActivityBlockHeight'),
        padding: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'availaibleActivityBlockPadding'),
        // margin: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'availaibleActivityBlockMargin'),
        decoration: StandartContainerExtractor.extract<BoxDecoration>(constantContainer, 'availaibleActivityBlockDecoration'),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(widget.imagePass),
                const SizedBox(width: 10),
                Text(
                  widget.name,
                  style: StandartContainerExtractor.extract<TextStyle>(constantContainer, 'availaibleActivityBlockNameStyle')
                )
              ]
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.extraText,
                  style: StandartContainerExtractor.extract<TextStyle>(constantContainer, 'availaibleActivityBlockextraTextStyle'),
                ),
                Text(
                  widget.price,
                  style: StandartContainerExtractor.extract<TextStyle>(constantContainer, 'availaibleActivityBlockPriceStyle'),
                )
              ],
            )
          ],
        ),
    )));
  }
}
