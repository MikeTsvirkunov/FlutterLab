import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class GroupBlock extends StatefulWidget {
  final String imagePass;
  final String header;
  final String? subheader;
  final void Function() action;  
  const GroupBlock({Key? key, required this.imagePass, required this.header, this.subheader, required this.action}) : super(key: key);

  @override
  State<GroupBlock> createState() => _GroupBlockState();
}

class _GroupBlockState extends State<GroupBlock> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.action,
      child: ListTile(
      leading: SvgPicture.asset(
        widget.imagePass,
        width: StandartContainerExtractor.extract(constantContainer, 'titleTarifsMarkWidth'),
      ),
      title: Text(
        widget.header,
        style: StandartContainerExtractor.extract(constantContainer, 'tarifBlockHeaderTextStyle'),
      ),
      subtitle: widget.subheader != null ? Text(
        widget.subheader!,
        style: StandartContainerExtractor.extract(constantContainer, 'tarifBlockSubheaderTextStyle')
      ) : null,
      trailing: const Icon(
        Icons.chevron_right_rounded,
        color: Color(0xffaaaaaa),
      ),
    ));
  }
}
