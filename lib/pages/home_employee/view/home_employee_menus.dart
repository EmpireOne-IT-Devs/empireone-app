import 'package:empireone_app/pages/ticket/view/ticket_page.dart';
import 'package:empireone_app/pages/verify_signup/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeEmployeeMenus extends StatelessWidget {
  const HomeEmployeeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 1000),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 5),
            spreadRadius: 0,
            blurRadius: 5,
            color: Color(0x33000000),
          ),
        ],
        // border: Border(left: BorderSide(color: Colors.red)),
      ),
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset('assets/icons/briefcase-search.svg'),
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
                                    ).colorScheme.primary,
                                  )
                                  .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset('assets/icons/people-12-filled.svg'),
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
                                    ).colorScheme.primary,
                                  )
                                  .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        // SvgPicture.asset('assets/icons/ticket.svg'),
                        TextButton(
                          onPressed: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const TicketPage(),
                              withNavBar: true, // ← keeps bottom nav bar
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Text(
                            'Ticket',
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
                                      ).colorScheme.primary,
                                    )
                                    .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset('assets/icons/money-calculator.svg'),
                        Text(
                          'Accounting',
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
                                    ).colorScheme.primary,
                                  )
                                  .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset('assets/icons/wallet-credit.svg'),
                        Text(
                          'Loan',
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
                                    ).colorScheme.primary,
                                  )
                                  .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/warning.svg'),
                        Text(
                          'IR',
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
                                    ).colorScheme.primary,
                                  )
                                  .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SvgPicture.asset('assets/icons/speaker.svg'),
                      Text(
                        'Announcement',
                        style:
                            GoogleFonts.mada(
                                  textStyle: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium,
                                )
                                .copyWith(fontSize: 8)
                                .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                )
                                .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/lightbulb.svg'),
                        Text(
                          'Suggestions',
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
                                    ).colorScheme.primary,
                                  )
                                  .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SvgPicture.asset('assets/icons/news.svg'),
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
                                  color: Theme.of(context).colorScheme.primary,
                                )
                                .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            'Menu Features',
            textAlign: TextAlign.start,
            style:
                GoogleFonts.mada(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                    )
                    .copyWith(fontSize: 10)
                    .copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
