import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/body/profile_body/tarifs/group_block.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';
import 'package:flutter_test_project/logic/variables/variables.dart';

class Tarifs extends StatefulWidget {
  const Tarifs({Key? key}) : super(key: key);

  @override
  State<Tarifs> createState() => _TarifsState();
}

class _TarifsState extends State<Tarifs> {

  @override
  Widget build(BuildContext context) {
    var blocks = StandartContainerExtractor.extract<List<Map<String, dynamic>>>(constantContainer, 'tarifsAndLimitsValues');
    // ListB
    return ListView.separated(
      controller: ScrollController(),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => GroupBlock(
        imagePass: blocks[index]['image'], 
        header: blocks[index]['header'], 
        subheader: blocks[index]['subheader'],
        action: blocks[index]['action']
      ), 
      separatorBuilder: (context, index) => Divider(height: 0, indent: StandartContainerExtractor.extract(constantContainer, 'titleTarifsIndentWidth'),), 
      itemCount: blocks.length
    );
  }
}
