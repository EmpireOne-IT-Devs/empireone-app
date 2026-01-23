// import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';

import 'package:empireone_app/pages/home_employee/view/view.dart';
import 'package:empireone_app/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeEmployeeProfile extends StatelessWidget {
  const HomeEmployeeProfile({super.key});
  static const double painterHeight = 250;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 500),
        child: SafeArea(
          child: AppBar(
            backgroundColor: Colors.red,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Profile'),
                Icon(Icons.notification_add_outlined),
              ],
            ),
            flexibleSpace: CurvedHeader(
              height: 250,
              child: Container(
                color: Colors.amber,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 105,
                      width: 103,
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            customBorder: const CircleBorder(),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: CircularProgressDialog(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 26,
                                width: 26,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'John Doe',
                      style:
                          GoogleFonts.mada(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                          ).copyWith(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                    ),
                    Text(
                      'Web Developer',
                      style:
                          GoogleFonts.mada(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                          ).copyWith(
                            fontSize: 13,
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      color: Colors.green,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(210, 35),
                          minimumSize: const Size(210, 35),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star),
                            SizedBox(width: 6),
                            Text(
                              'Employee of the Month',
                              style: GoogleFonts.inter(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.titleSmall,
                              ).copyWith(fontSize: 11.2),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // const SizedBox(height: 8),
                    Container(
                      color: Colors.blue,
                      child: Row(
                        children: [
                          // ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     maximumSize: const Size(130, 30),
                          //     minimumSize: const Size(130, 30),
                          //   ),
                          //   onPressed: () {},
                          //   child: Row(
                          //     children: [
                          //       Icon(Icons.star),
                          //       Text(
                          //         'Top Performer',
                          //         style: GoogleFonts.inter(
                          //           textStyle: Theme.of(
                          //             context,
                          //           ).textTheme.titleSmall,
                          //         ).copyWith(fontSize: 11.2),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     fixedSize: Size(115, 28),
                          //   ),
                          //   onPressed: () {},
                          //   child: Row(
                          //     children: [
                          //       Icon(Icons.star),
                          //       Text('Employee of the Month'),
                          //     ],
                          //   ),
                          // ),
                          // ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     fixedSize: Size(83.5, 28),
                          //   ),
                          //   onPressed: () {},
                          //   child: Row(
                          //     children: [
                          //       Icon(Icons.star),
                          //       Text('Employee of the Month'),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ), // SliverToBoxAdapter(child: Text('data')),
    );
  }
}
