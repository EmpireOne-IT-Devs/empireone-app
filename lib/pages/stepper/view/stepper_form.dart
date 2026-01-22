import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class StepperForm extends StatefulWidget {
  const StepperForm({super.key});

  @override
  State<StepperForm> createState() => _StepperFormState();
}

class _StepperFormState extends State<StepperForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.onTertiary),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Employee ID',
            style:
                GoogleFonts.mada(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                    )
                    .copyWith(color: Theme.of(context).colorScheme.tertiary)
                    .copyWith(fontSize: 12)
                    .copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            'Please enter your unique Employee ID assigned by the company. This ID is required to verify your identity and link your information to your employee profile. Ensure that the ID is entered correctly to avoid delays in processing your onboarding.',
            style:
                GoogleFonts.mada(
                      textStyle: Theme.of(context).textTheme.bodySmall,
                    )
                    .copyWith(color: Theme.of(context).colorScheme.tertiary)
                    .copyWith(fontSize: 11)
                    .copyWith(fontWeight: FontWeight.w200),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(8),
              ],
              textInputAction: TextInputAction.done,

              textAlign: TextAlign.left,
              style: GoogleFonts.mada(
                color: Theme.of(context).colorScheme.onPrimary,
                textStyle: Theme.of(context).textTheme.bodyLarge,
              ),
              decoration: InputDecoration(
                hintText: 'Employee ID',
                hintStyle: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  // child: prefixIcon,
                ),
                isDense: true,
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                // error: error,
                errorStyle: TextStyle(
                  color: Theme.of(
                    context,
                  ).colorScheme.onPrimary.withValues(alpha: 0.5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: OutlinedButton(onPressed: () {}, child: Text('Submit')),
          ),
        ],
      ),
    );
  }
}
