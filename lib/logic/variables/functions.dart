import 'package:flutter_test_project/logic/builders/standart_available_activity_block_builder.dart';
import 'package:flutter_test_project/logic/container/constant_container.dart';
import 'package:flutter_test_project/logic/functions/std_interest_tag_on_select_function.dart';
import 'package:flutter_test_project/logic/generators/available_activity_list_generator.dart';
import 'package:flutter_test_project/logic/generators/body_page_generator.dart';
import 'package:flutter_test_project/logic/generators/interests_list_generators.dart';
import 'package:flutter_test_project/logic/getters/get_list_of_available_activity.dart';
import 'package:flutter_test_project/logic/getters/get_list_of_interests.dart';
import 'package:flutter_test_project/logic/getters/get_profile_image_strategy.dart';
import 'package:flutter_test_project/logic/getters/get_username.dart';
import 'package:flutter_test_project/logic/processors/get_interest_tag_function_processor.dart';
import 'package:flutter_test_project/logic/processors/std_processor.dart';
import 'package:flutter_test_project/logic/sorters/interest_tag_std_sort.dart';

var funContainer = ConstantContainer({
  // functions
  'getProfileImage': GetProfileImageStrategy(),
  'closeAppFunction': () {},
  'logoutAppFunction': () {},
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
  'getUserName': GetUserName(),
  'standartInterestTagTextOnSelectFunctionsPairs': <String, Function(bool)>{
  },
  'getInterestTagFunctionProcessor': GetInterestTagFunctionProcessor(),
  'stdInterestTagOnSelectFunction': StdInterestTagOnSelectFunction(),
  'interestsTagStdSorter': InterestsTagStdSorter()
});
