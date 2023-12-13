import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/body/profile_body/interests/interests_wrap.dart';
import 'package:flutter_test_project/app/future_loading_stub.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class Interests extends StatefulWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  State<Interests> createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  late Future<List<String>> data;
  @override
  void initState() {
    super.initState();
    data = StandartContainerExtractor.extract<IStrategy>(constantContainer, 'getListOfInterests').execute();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: data, 
      builder: ((context, snapshot) {
        if (snapshot.hasData){
          return const InterestsWrap();
        } else {
          return const FutureLoadingStub();
        } 
      })
    );
  }
}
