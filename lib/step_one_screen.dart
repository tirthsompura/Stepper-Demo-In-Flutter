import 'package:flutter/material.dart';

class StepOne extends StatefulWidget {
  const StepOne({Key? key}) : super(key: key);

  @override
  State<StepOne> createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 550,
        width: MediaQuery.of(context).size.width,
        color: Colors.blueGrey,
        child: Center(
          child: Text("Step One",style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
    );
  }
}
