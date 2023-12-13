import 'package:flutter/material.dart';

class FutureLoadingStub extends StatefulWidget {
  const FutureLoadingStub({Key? key}): super(key: key);

  @override
  State<FutureLoadingStub> createState() => _FutureLoadingStubState();
}

class _FutureLoadingStubState extends State<FutureLoadingStub> {
  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(

    );
    // return Container(
    //   color: Colors.amber,
    //   height: 100,
    //   width: 100,
    // );
  }
}
