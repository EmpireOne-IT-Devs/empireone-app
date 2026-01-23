import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/stepper/bloc/bloc.dart';
import 'package:empireone_app/pages/stepper/stepper.dart';
import 'package:empireone_app/pages/widgets/widgets.dart';
import 'package:empireone_app/repositories/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class StepperPage extends StatelessWidget {
  static const route = '/stepper';

  const StepperPage({super.key});

  Future<void> listenerStepperSendOtp(
    BuildContext context,
    StepperState state,
  ) async {
    // Always verify context is still in the tree before proceeding
    if (!context.mounted) return;

    switch (state.requestStatusSendOtpStepper) {
      case RequestStatus.inProgress:
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const Center(child: CircularProgressDialog()),
        );
        break;

      case RequestStatus.success:
        // Pop the loading dialog using the root navigator
        Navigator.of(context, rootNavigator: true).pop();

        // Await your delay properly before the next action
        await Future.delayed(const Duration(milliseconds: 3000));

        // Crucial: Check mounted again after ANY await
        if (context.mounted) {
          // Proceed to next screen or step
        }
        break;

      case RequestStatus.failure:
        // Pop the loading dialog first
        Navigator.of(context, rootNavigator: true).pop();

        // Schedule the error dialog to avoid build-cycle conflicts
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (context.mounted) {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: ShowDialogError(
                  message: 'failed',
                  text: 'Verify Identity Failed',
                ),
              ),
            );
          }
        });
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StepperBloc(
        initialState: StepperState(),
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      )..add(StepperVerificationScreenCreated()),
      child: MultiBlocListener(
        listeners: [
          BlocListener<StepperBloc, StepperState>(
            listenWhen: (previous, current) =>
                previous.requestStatusSendOtpStepper !=
                current.requestStatusSendOtpStepper,
            listener: (context, state) =>
                listenerStepperSendOtp(context, state),
          ),
        ],
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.onSurface,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.red),
                ),
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
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: StepperOnboarding(),
                ),
              ),
            ],
          ),
        ),
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