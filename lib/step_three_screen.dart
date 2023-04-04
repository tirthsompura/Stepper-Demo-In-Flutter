import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepThree extends StatefulWidget {
  const StepThree({Key? key}) : super(key: key);

  @override
  State<StepThree> createState() => _StepThreeState();
}

class _StepThreeState extends State<StepThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 550,
        width: MediaQuery.of(context).size.width,
        color: Colors.blueGrey,
        child: Center(
          child: Text("Step Three",style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
    );
  }
}
