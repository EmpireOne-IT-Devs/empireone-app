import 'package:empireone_app/pages/stepper/stepper.dart';
import 'package:empireone_app/pages/stepper/view/stepper_onboarding.dart';
import 'package:flutter/material.dart';

class StepperPage extends StatelessWidget {
  static const route = '/stepper';

  const StepperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.onSurface,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: StepperHeading(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: StepperOnboarding(),
            ),
          ),
        ],
      ),
    );
  }
}

/// 🔹 Step Screens
  // Widget _buildStepContent() {
  //   switch (activeStep) {
  //     case 0:
  //       return Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           const Text(
  //             'Terms & Conditions',
  //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //           ),
  //           const SizedBox(height: 10),
  //           const Text(
  //             'Please accept the terms and conditions to proceed.',
  //           ),
  //           const SizedBox(height: 20),
  //           CheckboxListTile(
  //             value: true,
  //             onChanged: (_) {},
  //             title: const Text('I agree to the Terms & Conditions'),
  //           ),
  //         ],
  //       );

  //     case 1:
  //       return Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: const [
  //           Text(
  //             'Employee ID',
  //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //           ),
  //           SizedBox(height: 10),
  //           TextField(
  //             decoration: InputDecoration(
  //               labelText: 'Enter Employee ID',
  //               border: OutlineInputBorder(),
  //             ),
  //           ),
  //         ],
  //       );

  //     case 2:
  //       return Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: const [
  //           Text(
  //             'Email OTP Verification',
  //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //           ),
  //           SizedBox(height: 10),
  //           TextField(
  //             decoration: InputDecoration(
  //               labelText: 'Enter OTP',
  //               border: OutlineInputBorder(),
  //             ),
  //             keyboardType: TextInputType.number,
  //           ),
  //         ],
  //       );

  //     default:
  //       return const SizedBox.shrink();
  //   }
  // }

// Padding(
//         padding: const EdgeInsets.only(top: 16.0),
//         child: Column(
//           children: [
//             const SizedBox(height: 20),

//             /// 🔹 Easy Stepper
//             EasyStepper(
//               activeStep: activeStep,
//               lineStyle: const LineStyle(
//                 lineType: LineType.normal,
//                 lineThickness: 3,
//               ),
//               stepShape: StepShape.circle,
//               stepBorderRadius: 15,
//               borderThickness: 2,
//               stepRadius: 18,
//               finishedStepBorderColor: Colors.green,
//               finishedStepTextColor: Colors.green,
//               finishedStepBackgroundColor: Colors.green,
//               activeStepIconColor: Colors.white,
//               activeStepBackgroundColor: Colors.blue,
//               unreachedStepBackgroundColor: Colors.grey.shade300,
//               unreachedStepIconColor: Colors.grey,

//               onStepReached: (index) {
//                 setState(() => activeStep = index);
//               },

//               steps: const [
//                 EasyStep(icon: Icon(Icons.description), title: 'Terms'),
//                 EasyStep(icon: Icon(Icons.badge), title: 'Employee ID'),
//                 EasyStep(icon: Icon(Icons.email), title: 'Email OTP'),
//               ],
//             ),

//             const SizedBox(height: 30),

//             /// 🔹 Step Content
//             // Expanded(
//             //   child: Padding(
//             //     padding: const EdgeInsets.all(16),
//             //     child: _buildStepContent(),
//             //   ),
//             // ),

//             /// 🔹 Buttons
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   if (activeStep > 0)
//                     ElevatedButton(
//                       onPressed: () {
//                         setState(() => activeStep--);
//                       },
//                       child: const Text('Back'),
//                     ),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (activeStep < 2) {
//                         setState(() => activeStep++);
//                       } else {
//                         // Final submit
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                             content: Text('Verification Completed 🎉'),
//                           ),
//                         );
//                       }
//                     },
//                     child: Text(activeStep == 2 ? 'Submit' : 'Next'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),