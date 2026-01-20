import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowDialogError extends StatelessWidget {
  final String message;
  const ShowDialogError({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.7,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.2, 0.8],
                colors: [const Color(0xFFF9FAFB), const Color(0xFFD1D5DB)],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            elevation: 4,
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    // AppLocalizations.of(context)?.loginFailed ?? '',
                    'Login Failed',
                    style:
                        GoogleFonts.inter(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                            )
                            .copyWith(fontSize: 25)
                            .copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                  ),
                ),
                Text(
                  message,
                  style: GoogleFonts.kumbhSans(
                    textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Divider(color: Color(0xFFF5F5F4), thickness: 1),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    // AppLocalizations.of(context)?.ok ?? '',
                    'ok',
                    style:
                        GoogleFonts.inter(
                              textStyle: Theme.of(context).textTheme.labelSmall,
                            )
                            .copyWith(fontSize: 15)
                            .copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                  ),
                ),
              ],
            ),
            backgroundColor: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ],
    );
  }
}
