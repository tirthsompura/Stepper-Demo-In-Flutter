import 'package:flutter/material.dart';
import 'package:stepper_demo/step_one_screen.dart';
import 'package:stepper_demo/step_three_screen.dart';
import 'package:stepper_demo/step_two_screen.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int _activeStepIndex = 0;

  stepState(int step) {
    if (_activeStepIndex > step) {
      return StepState.complete;
    } else {
      return StepState.indexed;
    }
  }

  stepList() => [
    Step(
      title: const Text(''),
      content: const StepOne(),
      state: stepState(0),
      isActive: _activeStepIndex >= 0,
    ),
    Step(
      title: const Text(''),
      content: const StepTwo(),
      state: stepState(1),
      isActive: _activeStepIndex >= 1,
    ),
    Step(
      title: const Text(''),
      content: const StepThree(),
      state: stepState(2),
      isActive: _activeStepIndex >= 2,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper Demo"),
      ),
      body: Stepper(
        type: StepperType.horizontal,
        controlsBuilder: (context, controls) {
          return const
          SizedBox(height: 0,width: 0,);
        },
        onStepTapped: (step) => setState(() =>
        _activeStepIndex = step),
        currentStep: _activeStepIndex,
        steps: stepList(),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          setState(() {
            if (_activeStepIndex < 2) {
              setState(() {
                _activeStepIndex =
                    _activeStepIndex += 1;
              },
              );
            }
          },
          );
        },
        child: Container(
          height: 50,
          color: Colors.blueGrey.shade800,
          child: const Center(
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
