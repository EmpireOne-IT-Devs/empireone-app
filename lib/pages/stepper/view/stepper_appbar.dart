import 'package:empireone_app/pages/stepper/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class StepperAppbar extends StatelessWidget {
  const StepperAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<StepperBloc>();
    return BlocBuilder<StepperBloc, StepperState>(
      builder: (context, state) {
        return SliverAppBar(
          leading: IconButton(
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(),
              backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            onPressed: () {
              if (state.currentStep == 0) {
                context.pop();
              } else {
                bloc.add(BackPressed());
              }
            },
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.onTertiary,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.onSurface,
        );
      },
    );
  }
}
