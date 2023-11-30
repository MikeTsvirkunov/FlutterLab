import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/body/profile_body/available_activity/available_activity.dart';
import 'package:flutter_test_project/app/body/profile_body/interests/interests.dart';
import 'package:flutter_test_project/app/body/profile_body/tarifs/tarifs.dart';
import 'package:flutter_test_project/logic/builders/standart_available_activity_block_builder.dart';
import 'package:flutter_test_project/logic/container/constant_container.dart';
import 'package:flutter_test_project/logic/generators/available_activity_list_generator.dart';
import 'package:flutter_test_project/logic/generators/body_page_generator.dart';
import 'package:flutter_test_project/logic/generators/interests_list_generators.dart';
import 'package:flutter_test_project/logic/getters/get_list_of_available_activity.dart';
import 'package:flutter_test_project/logic/getters/get_list_of_interests.dart';
import 'package:flutter_test_project/logic/getters/get_profile_image_strategy.dart';
import 'package:flutter_test_project/logic/getters/get_username.dart';
import 'package:flutter_test_project/logic/processors/std_processor.dart';

var constantContainer = ConstantContainer(
  {
    // functions
    'getProfileImage': GetProfileImageStrategy(),
    'closeAppFunction': (){},
    'logoutAppFunction': (){},
    'bodyPageGenerator': BodyPageGenerator(),
    'getListOfAvailableActivity': GetListOfAvailableActivity(),
    'stdAvailableActivityBlockBuilder': StandartAvailableActivityBlockBuilder(),
    'availableActivityListGenerator': AvailableActivityListGenerator(),
    'stdProcessor': StdProcessor(),
    'getListOfInterests': GetListOfInterests(),
    'interestsListGenerator': InterestsListGenerator(),
    'availableActivityKeyProcessorPair': {
      'name': StdProcessor(),
      'price': StdProcessor(),
      'extra_text': StdProcessor(),
      'measure': StdProcessor()
    },
    // image passes
    'closeButtonImagePass': 'assets/close.svg',
    'logoutButtonImagePass': 'assets/logout.svg',
    'availableActivityKeyImagePassPair': {
      'СберПрайм': 'assets/sber_prime.svg',
      'Переводы': 'assets/transfers.svg'
    },
    'stdAvailableActivityImagePass': 'assets/close.svg',
    // colors
    'mainColor': const Color(0xff068441),
    'subtitleTextColor': const Color(0x61000000),
    'mainTextColor': const Color(0xff000000),
    'mainBackGroundColor': const Color(0xFFFAFAFA),
    'tabBarUnselectedLabelColor': const Color(0xff575757),
    'tabBarSelectedLabelColor': Colors.black,
    'mainAppBarBackgroundColor': Colors.white,
    'mainAppBarSurfaceTintColor': Colors.white,
    // paddings
    'exitButtonPaddings': const EdgeInsetsDirectional.all(14),
    'profilePadding': const EdgeInsetsDirectional.all(14),
    'availableActivityPadding': const EdgeInsetsDirectional.all(15),
    'availaibleActivityBlockPadding': const EdgeInsetsDirectional.all(16),
    'mainPadding': const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
    'standartInterstTagPadding': const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 5),
    'standartProfilePageBlockTitlePadding': const EdgeInsetsDirectional.fromSTEB(15, 40, 40, 5),
    'standartProfilePageBlockDescriptionPadding': const EdgeInsetsDirectional.symmetric(horizontal: 15),
    // margin
    'standartInterstTagMarging': const EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
    'availaibleActivityBlockMargin': const EdgeInsetsDirectional.symmetric(horizontal: 0),
    // sizes
    'mainAppBarHeight': 250.0,
    'availaibleActivityBlockWidth': 216.0,
    'availaibleActivityBlockHeight': 150.0,
    'availableActivitySpacer': 15.0,
    'endSpace': 20.0,
    'titleTarifsMarkWidth': 25.0,
    'titleTarifsIndentWidth': 55.0,
    // strings
    'getUserName': GetUserName(),
    // box decorations
    'availaibleActivityBlockDecoration': const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 5),
          blurRadius: 5,
          spreadRadius: -2.5,
          color: Colors.black26
        )
      ]
    ),
    'standartInterestTagDecoration': const BoxDecoration(
      color: Color(0xffe6e6e6),
      borderRadius: BorderRadius.all(Radius.circular(100)),
    ),
    // text styles
    'tarifBlockHeaderTextStyle': const TextStyle(
      color: Colors.black,
      fontSize: 16
    ),
    'tarifBlockSubheaderTextStyle': const TextStyle(
      color: Color(0xff717171),
      fontSize: 14
    ),
    'profileAvatarTextStyle': const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20
    ),
    'availaibleActivityBlockPriceStyle': const TextStyle(
      color: Color(0x61000000),
      fontSize: 14
    ),
    'availaibleActivityBlockextraTextStyle': const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14
    ),
    'availaibleActivityBlockNameStyle': const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 16
    ),
    'standartProfilePageBlockDescriptionStyle': const TextStyle(
      color: Color(0x61000000), 
      fontSize: 16
    ),
    'standartProfilePageBlockTitleStyle':const TextStyle(
      color: Colors.black, 
      fontWeight: FontWeight.bold,
      fontSize: 20
    ),
    'standartInterestTagTextStyle': const TextStyle(
      color: Colors.black, 
      fontSize: 14
    ),
    // tarifs and limits
    'tarifsAndLimitsValues': [
      {
        'header': 'Изменить суточный лимит',
        'subheader': 'На платежи и переводы',
        'image': 'assets/day_lim.svg',
        'action': (){}
      },
      {
        'header': 'Переводы без комиссии',
        'subheader': 'На платежи и переводы',
        'image': 'assets/persents.svg',
        'action': () {}
      },
      {
        'header': 'Информация о тарифах и лимитах',
        'image': 'assets/info_t_and_lim.svg',
        'action': () {}
      },
    ],
    'bodyList': [
      {
        'title': 'У вас подключено',
        'description': 'Подписки, автоплатежи и сервисы на которые вы подписались',
        'child': const AvailableActivity()
      }, 
      {
        'title': 'Тарифы и лимиты',
        'description': 'Для операций в Сбербанк Онлайн',
        'child': const Tarifs()
      }, 
      {
        'title': 'Интересы',
        'description': 'Мы подбираем истории и предложения по темам, которые вам нравятся',
        'child': const Interests()
      }
    ]
  }
);