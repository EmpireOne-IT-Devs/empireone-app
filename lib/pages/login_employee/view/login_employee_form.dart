import 'package:empireone_app/l10n/app_localizations.dart';
import 'package:empireone_app/models/models.dart';
import 'package:empireone_app/pages/login_employee/bloc/bloc.dart';
import 'package:empireone_app/pages/login_employee/widgets/login_employee_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginEmployeeForm extends StatelessWidget {
  const LoginEmployeeForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<LoginEmployeeBloc>();

    return BlocBuilder<LoginEmployeeBloc, LoginEmployeeState>(
      builder: (context, state) {
        return Container(
          constraints: BoxConstraints(
            minHeight: 250, // Minimum height to maintain your UI design
            maxWidth: 500, // Good practice for web/tablet layouts
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    AppLocalizations.of(context)?.employeeidverification ?? '',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.titleLarge,
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20.4,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    top: 0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Employee ID:',
                      style: GoogleFonts.inter(
                        color: Theme.of(context).colorScheme.onPrimary,
                        textStyle: Theme.of(context).textTheme.labelMedium,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.9,
                      ),
                    ),
                  ),
                ),
                LoginEmployeeField(
                  onChanged: (value) {
                    bloc.add(EmployeeIdChanged(value));
                  },
                  hintText: '35653445',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/employeeicon.svg',
                    fit: BoxFit.contain,
                  ),
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                  textInputFormatter: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(8),
                  ],
                  error: Text(state.employeeId.errorType.message.toString()),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (state.employeeId.errorType == ErrorType.none) {
                        bloc.add(EmployeeIdVerifiedPressed());
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          state.employeeId.errorType == ErrorType.none
                          ? Color(0xFF1329A9)
                          : Color(0xFF1329A9).withValues(alpha: 0.5),
                    ),
                    child: Text(AppLocalizations.of(context)?.submit ?? ''),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
