import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';

class HomeEmployeeProfile extends StatelessWidget {
  const HomeEmployeeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          top: true,
          sliver: SliverAppBar(
            elevation: 4.0, // Controls shadow intensity/size
            // shadowColor: Theme.of(
            //   context,
            // ).colorScheme.primary,
            forceElevated:
                true, // Ensures shadow shows even when not scrolled under
            pinned: true, //Keeps it visible at the top
            automaticallyImplyLeading: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Profile'),
                Container(
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xff414c9d),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/employee_star_profile.svg',
                  ),
                ),
              ],
            ),
            expandedHeight: 229,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: 20,
                          maxWidth: double.infinity,
                        ),
                        decoration: BoxDecoration(
                          // color: Theme.of(context).colorScheme.primary,
                          color: Color(0xFF1329a9),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 0,
                              offset: Offset(-1, -3),
                              color: Color(0x33000000),
                              inset: true,
                            ),
                            BoxShadow(
                              blurRadius: 13,
                              spreadRadius: 0,
                              offset: Offset(0, 8),
                              color: Color(0x33000000),
                              inset: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: Container(
                      height: 141,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        // color: Theme.of(context).colorScheme.primary,
                        color: Color(0xFF1329a9),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(-1, -3),
                            color: Color(0x33000000),
                            inset: true,
                          ),
                          BoxShadow(
                            blurRadius: 13,
                            spreadRadius: 0,
                            offset: Offset(0, 8),
                            color: Color(0x33000000),
                            inset: false,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16),
                                  constraints: BoxConstraints(
                                    maxHeight: 80,
                                    minWidth: 80,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xff414c9d),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/profile_user.svg',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'John Doe',
                                        style:
                                            GoogleFonts.inter(
                                                  textStyle: Theme.of(
                                                    context,
                                                  ).textTheme.titleLarge,
                                                )
                                                .copyWith(fontSize: 20.4)
                                                .copyWith(
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.onSurface,
                                                ),
                                      ),
                                      Text(
                                        'john.doe@example.com',
                                        style:
                                            GoogleFonts.inter(
                                                  textStyle: Theme.of(
                                                    context,
                                                  ).textTheme.bodyMedium,
                                                )
                                                .copyWith(fontSize: 11.9)
                                                .copyWith(
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.onSurface,
                                                ),
                                      ),
                                      Text(
                                        'Member since Jan 2024',
                                        style:
                                            GoogleFonts.inter(
                                                  textStyle: Theme.of(
                                                    context,
                                                  ).textTheme.bodyMedium,
                                                )
                                                .copyWith(fontSize: 10.2)
                                                .copyWith(
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.onSurface,
                                                ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Theme.of(context)
                                  .colorScheme
                                  .inversePrimary
                                  .withValues(alpha: 0.2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // actions: [],
          ),
        ),
        SliverToBoxAdapter(child: Text('data')),
      ],
    );
  }
}
