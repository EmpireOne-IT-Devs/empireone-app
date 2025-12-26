import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeEmployeeAppbar extends StatelessWidget {
  const HomeEmployeeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(5, 5),
                spreadRadius: 0,
                blurRadius: 5,
                color: Color(0x33000000),
              ),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'EmpireOne',
                              style: GoogleFonts.mada(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontSize: 25.5)
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Dashboard',
                              style: GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodyMedium,
                              ).copyWith(fontSize: 15.6),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          constraints: BoxConstraints(
                            minHeight:
                                48, // Minimum height to maintain your UI design
                            maxWidth:
                                55, // Good practice for web/tablet layouts
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onSurface,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/dashboardstar.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                  minHeight: 38,
                                  maxWidth: 45,
                                ),
                                decoration: BoxDecoration(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/Vector.svg',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Name:',
                                          style:
                                              GoogleFonts.mada(
                                                    textStyle: Theme.of(
                                                      context,
                                                    ).textTheme.bodyMedium,
                                                  )
                                                  .copyWith(fontSize: 12)
                                                  .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                        ),
                                        Text('John Doe'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Employee ID: ',
                                          style:
                                              GoogleFonts.mada(
                                                    textStyle: Theme.of(
                                                      context,
                                                    ).textTheme.bodyMedium,
                                                  )
                                                  .copyWith(fontSize: 10)
                                                  .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                        ),
                                        Text(
                                          '64353345',
                                          style: GoogleFonts.mada(
                                            textStyle: Theme.of(
                                              context,
                                            ).textTheme.bodyMedium,
                                          ).copyWith(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 13.0),
                        child: SvgPicture.asset(
                          'assets/icons/burger.svg',
                          height: 27,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
