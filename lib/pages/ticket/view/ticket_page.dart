import 'package:empireone_app/pages/ticket/view/view.dart';
import 'package:empireone_app/pages/ticket/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketPage extends StatelessWidget {
  static const route = '/ticket';

  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 73),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TicketAppbar(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
              child: TicketSearchField(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/create-ticket.svg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Create New Ticket',
                        style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.titleSmall,
                        ).copyWith(fontSize: 13.6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: null,
                  minimumSize: Size(160, 45),
                  maximumSize: const Size(160, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/icons/customer-service.svg'),
                    Text(
                      'My Tickets',
                      style:
                          GoogleFonts.mada(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.bodyMedium,
                              )
                              .copyWith(fontSize: 13.6)
                              .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketDashboard(ticketTitle: '', ticketVal: ''),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TicketDashboard(ticketTitle: '', ticketVal: ''),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketDashboard(ticketTitle: '', ticketVal: ''),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TicketDashboard(ticketTitle: '', ticketVal: ''),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(220, 45),
                maximumSize: const Size(220, 45),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/icons/person_internal_request.svg'),
                  Text('Internal Request'),
                  Icon(Icons.keyboard_arrow_right, size: 25),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
              child: Text(
                'Latest Ticket',
                style:
                    GoogleFonts.mada(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                        )
                        .copyWith(fontSize: 15)
                        .copyWith(
                          color: Theme.of(context).colorScheme.onTertiary,
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
