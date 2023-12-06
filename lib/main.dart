import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/body/body.dart';
import 'package:flutter_test_project/app/main_app_bar/main_app_bar.dart';
import 'package:flutter_test_project/logic/container/standart_container_extender.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';
import 'package:flutter_test_project/logic/variables/variables.dart';
import 'package:flutter_test_project/themes/main_theme.dart';

void main() {
  runApp(const StretchableSliverAppBar());
}

class StretchableSliverAppBar extends StatefulWidget {
  const StretchableSliverAppBar({super.key});

  @override
  State<StretchableSliverAppBar> createState() => _StretchableSliverAppBarState();
}

class _StretchableSliverAppBarState extends State<StretchableSliverAppBar> with SingleTickerProviderStateMixin  {
  
  @override
  void initState() {
    super.initState();
    StandartContainerExtender.extend(variableContainer, 'mainTabController', TabController(length: 2, vsync: this));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: stdThemeDataScheme,
      home: Scaffold(
        backgroundColor: StandartContainerExtractor.extract(constantContainer, 'mainBackGroundColor'),
        body: NestedScrollView(
          headerSliverBuilder: (context, value){
            return const [MainAppBar()];
          },
          physics: const BouncingScrollPhysics(),
          body: const Body()
        ),
      )
    );
  }
}
