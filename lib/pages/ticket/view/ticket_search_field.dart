import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:google_fonts/google_fonts.dart';

class TicketSearchField extends StatelessWidget {
  const TicketSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      constraints: BoxConstraints(
        minHeight: 31, // Minimum height to maintain your UI design
        maxWidth: double.infinity, // Good practice for web/tablet layouts
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
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
      child: TextFormField(
        autocorrect: false,
        enableSuggestions: false,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          labelStyle: TextStyle(color: Colors.red),
          hintText: 'Search',
          hintStyle:
              GoogleFonts.mada(
                    textStyle: Theme.of(context).textTheme.titleSmall,
                  )
                  .copyWith(fontWeight: FontWeight.w400)
                  .copyWith(color: Theme.of(context).colorScheme.onPrimary)
                  .copyWith(fontSize: 15),
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
