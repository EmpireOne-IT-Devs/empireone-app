import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoleHeading extends StatelessWidget {
  const RoleHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/empireonelogo.png'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'EmpireOne BPO Solutions Inc.',
            style:
                GoogleFonts.mada(
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                    )
                    .copyWith(fontSize: 24)
                    .copyWith(fontWeight: FontWeight.bold)
                    .copyWith(color: Theme.of(context).colorScheme.onSurface)
                    .copyWith(
                      shadows: [
                        Shadow(
                          offset: Offset(5.0, 5.0),
                          blurRadius: 3.0,
                          color: Theme.of(
                            context,
                          ).colorScheme.tertiary.withValues(alpha: 0.25),
                        ),
                        Shadow(
                          offset: Offset(5.0, 5.0),
                          blurRadius: 8.0,
                          color: Theme.of(
                            context,
                          ).colorScheme.tertiary.withValues(alpha: 0.25),
                        ),
                      ],
                    ),
          ),
        ),
      ],
    );
  }
}
