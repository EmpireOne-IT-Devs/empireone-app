import 'package:empireone_app/pages/role/role.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoleButtons extends StatelessWidget {
  const RoleButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 133,
          child: RoleButton(
            text: Stack(
              children: [
                // The White Border
                Text(
                  'Employee',
                  style:
                      GoogleFonts.mada(
                            textStyle: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
                          )
                          .copyWith(
                            fontSize: 21,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 0.5
                              ..color = Theme.of(context).colorScheme.onSurface,
                          )
                          .copyWith(fontWeight: FontWeight.bold),
                ),
                // The Primary Fill
                Text(
                  'Employee',
                  style:
                      GoogleFonts.mada(
                            textStyle: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
                          )
                          .copyWith(
                            fontSize: 21,
                            color: Theme.of(context).colorScheme.primary,
                          )
                          .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 133,
          child: RoleButton(
            text: Stack(
              children: [
                // The White Border
                Text(
                  'JobSeeker',
                  style:
                      GoogleFonts.mada(
                            textStyle: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
                          )
                          .copyWith(
                            fontSize: 21,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 0.5
                              ..color = Theme.of(context).colorScheme.onSurface,
                          )
                          .copyWith(fontWeight: FontWeight.bold),
                ),
                // The Primary Fill
                Text(
                  'JobSeeker',
                  style:
                      GoogleFonts.mada(
                            textStyle: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
                          )
                          .copyWith(
                            fontSize: 21,
                            color: Theme.of(context).colorScheme.primary,
                          )
                          .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
