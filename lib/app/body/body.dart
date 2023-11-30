import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/body/profile_body/profile_body.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/variables/variables.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: StandartContainerExtractor.extract<TabController>(variableContainer, 'mainTabController'),
      children: const [
        ProfileBody(),
        Text('opt')
      ]
    );
  }
}
