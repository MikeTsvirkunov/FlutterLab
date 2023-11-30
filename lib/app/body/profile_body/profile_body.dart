import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/body/profile_body/available_activity/available_activity.dart';
import 'package:flutter_test_project/app/body/profile_body/interests/interests.dart';
import 'package:flutter_test_project/app/body/profile_body/profile_page_block.dart';
import 'package:flutter_test_project/app/body/profile_body/tarifs/tarifs.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    // col not work
    return ListView(
      padding: StandartContainerExtractor.extract<EdgeInsetsGeometry>(constantContainer, 'mainPadding'),
      children: StandartContainerExtractor.extract<IStrategy>(constantContainer, 'bodyPageGenerator').execute(),
    );
  }
}
