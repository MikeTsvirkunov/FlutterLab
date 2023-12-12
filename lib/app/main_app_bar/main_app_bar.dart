import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/main_app_bar/exit_button.dart';
import 'package:flutter_test_project/app/main_app_bar/profile_avatar.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';
import 'package:flutter_test_project/logic/variables/text_style_container.dart';
import 'package:flutter_test_project/logic/variables/variables.dart';

class MainAppBar extends StatefulWidget {
  const MainAppBar({super.key});

  @override
  State<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  final bool _stretch = true;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: true,
      stretch: _stretch,
      automaticallyImplyLeading: false,
      onStretchTrigger: () async {},
      // backgroundColor: StandartContainerExtractor.extract(constantContainer, 'mainAppBarBackgroundColor'),
      surfaceTintColor: StandartContainerExtractor.extract(constantContainer, 'mainAppBarSurfaceTintColor'),
      stretchTriggerOffset: 200.0,
      expandedHeight: StandartContainerExtractor.extract(constantContainer, 'mainAppBarHeight'),
      flexibleSpace: const FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.only(bottom: 40),
        expandedTitleScale: 1,
        title: FittedBox(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitHeight, 
            child: ProfileAvatar()
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExitButton(
            imagePass: StandartContainerExtractor.extract(constantContainer, 'closeButtonImagePass'), 
            onPress: StandartContainerExtractor.extract(constantContainer, 'closeAppFunction')
          ),
          ExitButton(
            imagePass: StandartContainerExtractor.extract(constantContainer, 'logoutButtonImagePass'), 
            onPress: StandartContainerExtractor.extract(constantContainer, 'logoutAppFunction')
          ),
        ],
      ),
      bottom: TabBar(
        controller: StandartContainerExtractor.extract(variableContainer, 'mainTabController'),
        indicatorColor: StandartContainerExtractor.extract(constantContainer, 'mainColor'),
        unselectedLabelColor: StandartContainerExtractor.extract(constantContainer, 'tabBarUnselectedLabelColor'),
        labelColor: StandartContainerExtractor.extract(constantContainer, 'tabBarSelectedLabelColor'),
        unselectedLabelStyle: StandartContainerExtractor.extract(textStyleContainer, 'unselectedMainTabTextStyle'),
        labelStyle: StandartContainerExtractor.extract(textStyleContainer, 'selectedMainTabTextStyle'),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: const [
          Tab(text: 'Профиль'), 
          Tab(text: 'Настройки')
        ]
      ),

    );
  }
}
