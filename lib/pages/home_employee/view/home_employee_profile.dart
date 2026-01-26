// import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';

import 'package:empireone_app/pages/home_employee/bloc/bloc.dart';
import 'package:empireone_app/pages/home_employee/view/view.dart';
import 'package:empireone_app/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeEmployeeProfile extends StatelessWidget {
  const HomeEmployeeProfile({super.key});
  static const double painterHeight = 250;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeEmployeeBloc, HomeEmployeeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 350),
            child: SafeArea(
              child: AppBar(
                backgroundColor: Colors.transparent,
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
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.secondary,
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
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
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
                      ElevatedButton(
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

                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            ),
          ), // SliverToBoxAdapter(child: Text('data')),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(160, 30),
                          minimumSize: const Size(160, 30),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Icon(Icons.star),
                            const SizedBox(width: 4),
                            Text(
                              'Top Performer',
                              style: GoogleFonts.inter(
                                textStyle: Theme.of(
                                  context,
                                ).textTheme.titleSmall,
                              ).copyWith(fontSize: 11.2),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(160, 30),
                          minimumSize: const Size(160, 30),
                        ),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.star),
                            SizedBox(width: 4),
                            Text('Team Leader'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(120, 30),
                          minimumSize: const Size(120, 30),
                        ),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.star),
                            SizedBox(width: 4),
                            Text('5 Years'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 75),
                    maximumSize: Size(double.infinity, 75),
                    side: BorderSide(
                      width: 2,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            constraints: BoxConstraints(
                              maxHeight: 50,
                              maxWidth: 50,
                              minHeight: 45,
                              minWidth: 45,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Theme.of(
                                context,
                              ).colorScheme.error.withValues(alpha: 0.5),
                            ),
                            child: Icon(
                              Icons.logout,
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Logout',
                            style:
                                GoogleFonts.mada(
                                      textStyle: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium,
                                    )
                                    .copyWith(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.error,
                                    )
                                    .copyWith(fontSize: 22.3),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 25,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ],
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
