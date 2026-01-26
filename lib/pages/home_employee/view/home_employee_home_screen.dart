import 'package:empireone_app/pages/home_employee/view/view.dart';
import 'package:empireone_app/pages/ticket/view/view.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeEmployeeHomeScreen extends StatelessWidget {
  const HomeEmployeeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(1, 3),
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
              child: AppBar(
                // backgroundColor: Colors.blue,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                flexibleSpace: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset('assets/images/empireoneunified.png'),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Empire',
                                  style:
                                      GoogleFonts.mada(
                                            textStyle: Theme.of(
                                              context,
                                            ).textTheme.titleMedium,
                                          )
                                          .copyWith(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.primary,
                                          )
                                          .copyWith(
                                            shadows: [
                                              Shadow(
                                                offset: Offset(0, 2),
                                                blurRadius: 4,
                                                color: Color.fromRGBO(
                                                  0,
                                                  0,
                                                  0,
                                                  0.25,
                                                ),
                                              ),
                                            ],
                                          ),
                                ),
                                TextSpan(
                                  text: 'One',
                                  style:
                                      GoogleFonts.mada(
                                            textStyle: Theme.of(
                                              context,
                                            ).textTheme.titleMedium,
                                          )
                                          .copyWith(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.secondary,
                                          )
                                          .copyWith(
                                            shadows: [
                                              Shadow(
                                                offset: Offset(0, 2),
                                                blurRadius: 4,
                                                color: Color.fromRGBO(
                                                  0,
                                                  0,
                                                  0,
                                                  0.25,
                                                ),
                                              ),
                                            ],
                                          )
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                ),
                                TextSpan(
                                  text: ' Unified System',
                                  style:
                                      GoogleFonts.mada(
                                            textStyle: Theme.of(
                                              context,
                                            ).textTheme.titleMedium,
                                          )
                                          .copyWith(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.primary,
                                          )
                                          .copyWith(
                                            shadows: [
                                              Shadow(
                                                offset: Offset(0, 2),
                                                blurRadius: 4,
                                                color: Color.fromRGBO(
                                                  0,
                                                  0,
                                                  0,
                                                  0.25,
                                                ),
                                              ),
                                            ],
                                          ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 3,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Theme.of(context).colorScheme.onSurface,
                                width: 3,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 16.0,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/briefcase.svg',
                                            ),
                                            Text(
                                              'Hiring',
                                              style:
                                                  GoogleFonts.mada(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.bodyMedium,
                                                      )
                                                      .copyWith(fontSize: 8)
                                                      .copyWith(
                                                        color: Theme.of(
                                                          context,
                                                        ).colorScheme.onSurface,
                                                      )
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/handshake.svg',
                                            ),
                                            Text(
                                              'Engagement',
                                              style:
                                                  GoogleFonts.mada(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.bodyMedium,
                                                      )
                                                      .copyWith(fontSize: 8)
                                                      .copyWith(
                                                        color: Theme.of(
                                                          context,
                                                        ).colorScheme.onSurface,
                                                      )
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {
                                            PersistentNavBarNavigator.pushNewScreen(
                                              context,
                                              screen: const TicketPage(),
                                              withNavBar:
                                                  true, // ← keeps bottom nav bar
                                              pageTransitionAnimation:
                                                  PageTransitionAnimation
                                                      .cupertino,
                                            );
                                          },
                                          child: Column(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/ticketing.svg',
                                              ),
                                              Text(
                                                'Ticket',
                                                style:
                                                    GoogleFonts.mada(
                                                          textStyle:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyMedium,
                                                        )
                                                        .copyWith(fontSize: 8)
                                                        .copyWith(
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .onSurface,
                                                        )
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/star_activity.svg',
                                            ),
                                            Text(
                                              'Activities',
                                              style:
                                                  GoogleFonts.mada(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.bodyMedium,
                                                      )
                                                      .copyWith(fontSize: 8)
                                                      .copyWith(
                                                        color: Theme.of(
                                                          context,
                                                        ).colorScheme.onSurface,
                                                      )
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 16.0,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/dollar.svg',
                                            ),
                                            Text(
                                              'Finances',
                                              style:
                                                  GoogleFonts.mada(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.bodyMedium,
                                                      )
                                                      .copyWith(fontSize: 8)
                                                      .copyWith(
                                                        color: Theme.of(
                                                          context,
                                                        ).colorScheme.onSurface,
                                                      )
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/wallet.svg',
                                            ),
                                            Text(
                                              'Payroll',
                                              style:
                                                  GoogleFonts.mada(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.bodyMedium,
                                                      )
                                                      .copyWith(fontSize: 8)
                                                      .copyWith(
                                                        color: Theme.of(
                                                          context,
                                                        ).colorScheme.onSurface,
                                                      )
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/rank.svg',
                                            ),
                                            Text(
                                              'RnR',
                                              style:
                                                  GoogleFonts.mada(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.bodyMedium,
                                                      )
                                                      .copyWith(fontSize: 8)
                                                      .copyWith(
                                                        color: Theme.of(
                                                          context,
                                                        ).colorScheme.onSurface,
                                                      )
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/reward_store.svg',
                                            ),
                                            Text(
                                              'News',
                                              style:
                                                  GoogleFonts.mada(
                                                        textStyle: Theme.of(
                                                          context,
                                                        ).textTheme.bodyMedium,
                                                      )
                                                      .copyWith(fontSize: 8)
                                                      .copyWith(
                                                        color: Theme.of(
                                                          context,
                                                        ).colorScheme.onSurface,
                                                      )
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: HomeEmployeeMenus(),
            ),
          ),
        ],
      ),
    );
  }
}
// TextStyle(
//                             fontFamily: 'MadaniArabic-Bold',
//                             fontSize: 15,
//                             fontWeight: FontWeight.w400,
//                             height: 20 / 15,
//                             color: Colors.blue,
//                             shadows: [
//                               Shadow(
//                                 offset: Offset(0, 2),
//                                 blurRadius: 4,
//                                 color: Color.fromRGBO(0, 0, 0, 0.25),
//                               ),
//                             ],
//                           ),