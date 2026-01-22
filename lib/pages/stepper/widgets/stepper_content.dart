import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StepperContent extends StatelessWidget {
  const StepperContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.onTertiary,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.left,
                'BPO Terms & Conditions',
                style:
                    GoogleFonts.mada(
                          textStyle: Theme.of(context).textTheme.bodySmall,
                        )
                        .copyWith(color: Theme.of(context).colorScheme.tertiary)
                        .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'Please carefully read the following terms and conditions before proceeding with your onboarding.',
                style:
                    GoogleFonts.mada(
                          textStyle: Theme.of(context).textTheme.bodySmall,
                        )
                        .copyWith(color: Theme.of(context).colorScheme.tertiary)
                        .copyWith(fontSize: 11)
                        .copyWith(fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
