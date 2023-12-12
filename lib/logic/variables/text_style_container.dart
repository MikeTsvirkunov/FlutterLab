import 'package:flutter/material.dart';
import 'package:flutter_test_project/logic/container/constant_container.dart';

var textStyleContainer = ConstantContainer(
  {
    
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
      fontWeight: FontWeight.w700,
      fontSize: 20
    ),
    'standartInterestTagTextStyle': const TextStyle(
      color: Colors.black, 
      fontSize: 14
    ),
    'unselectedMainTabTextStyle': const TextStyle(fontWeight: FontWeight.w600),
    'selectedMainTabTextStyle': const TextStyle(fontWeight: FontWeight.w600),
  }
);