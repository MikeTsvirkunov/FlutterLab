import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/future_loading_stub.dart';
import 'package:flutter_test_project/logic/container/standart_container_extractor.dart';
import 'package:flutter_test_project/logic/interfaces/istrategy.dart';
import 'package:flutter_test_project/logic/variables/constants.dart';

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({Key? key}): super(key: key);

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  late Future<ByteData> image;
  @override
  void initState() {
    super.initState();
    image = StandartContainerExtractor.extract<IStrategy>(constantContainer, 'getProfileImage').execute<Future<ByteData>>();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: image, 
      builder: (BuildContext context, AsyncSnapshot<ByteData> snapshot){
        if (snapshot.hasData){
          return Container(
            padding: StandartContainerExtractor.extract(constantContainer, 'profilePadding'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.memory(
                  snapshot.data!.buffer.asUint8List(),
                ),
                Text(
                  style: TextStyle(color: StandartContainerExtractor.extract(constantContainer, 'mainTextColor')),
                  StandartContainerExtractor.extract<IStrategy>(constantContainer, 'getUserName').execute<String>()
                )
              ],
            )
          );
        } else {
          return const FutureLoadingStub();
        }
      }
    );
  }
}
