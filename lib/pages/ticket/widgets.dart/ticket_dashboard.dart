import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketDashboard extends StatelessWidget {
  final String ticketTitle;
  final Widget? iconIndicator;
  final String ticketVal;
  const TicketDashboard({super.key, required this.ticketTitle, this.iconIndicator, required this.ticketVal});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 113, // Minimum height to maintain your UI design
        maxWidth: 170, // Good practice for web/tablet layouts
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
                      constraints: BoxConstraints(
                        minHeight:
                            20, // Minimum height to maintain your UI design
                        maxWidth: 19, // Good practice for web/tablet layouts
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xFFD1D5DB),
                      ),
                      child: Text(
                        '0',
                        style:
                            GoogleFonts.mada(
                                  textStyle: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium,
                                )
                                .copyWith(fontSize: 10.2)
                                .copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset('assets/icons/icons_calendar.svg'),
              ],
            ),
            Text(
              'My Ticket Pending',
              style:
                  GoogleFonts.mada(
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                      )
                      .copyWith(fontSize: 10.2)
                      .copyWith(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
            ),
            SizedBox(height: 16),
            TextButton(
              style: TextButton.styleFrom(
                visualDensity: VisualDensity.compact,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.zero,
                minimumSize: Size(51, 26),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'Show All',
                    style:
                        GoogleFonts.mada(
                              textStyle: Theme.of(context).textTheme.bodyMedium,
                            )
                            .copyWith(fontSize: 9)
                            .copyWith(
                              color: Theme.of(
                                context,
                              ).colorScheme.surfaceContainer,
                            ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Theme.of(context).colorScheme.surfaceContainer,
                    size: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
