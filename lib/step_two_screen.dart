import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepTwo extends StatefulWidget {
  const StepTwo({Key? key}) : super(key: key);

  @override
  State<StepTwo> createState() =>
      _StepTwoState();
}

class _StepTwoState extends State<StepTwo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: 550,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueGrey,
          child: const Center(
            child: Text("Step Two",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
      ),
    );
  }
}
