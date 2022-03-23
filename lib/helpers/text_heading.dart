import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayLarge extends StatelessWidget {
  final String text; 
  const DisplayLarge(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, 
    style: GoogleFonts.lora(
      fontWeight: FontWeight.w400, 
      fontSize: 57, 
    )
    );
  }
}

class DisplayMedium extends StatelessWidget {
  final String text; 
  const DisplayMedium(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, 
    style: GoogleFonts.lora(
      fontWeight: FontWeight.w400, 
      fontSize: 45, 
    )
    );
  }
}

class DisplaySmall extends StatelessWidget {
  final String text; 
  const DisplaySmall(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, 
    style: GoogleFonts.lora(
      fontWeight: FontWeight.w400, 
      fontSize: 36, 
    )
    );
  }
}

class HeadlineLarge extends StatelessWidget {
  final String text;
  const HeadlineLarge(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 32,
        ));
  }
}

class HeadlineMedium extends StatelessWidget {
  final String text;
  const HeadlineMedium(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 28,
        ));
  }
}

class HeadlineSmall extends StatelessWidget {
  final String text;
  const HeadlineSmall(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 24,
        ));
  }
}

class TitleLarge extends StatelessWidget {
  final String text;
  const TitleLarge(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ));
  }
}

class TitleMedium extends StatelessWidget {
  final String text;
  const TitleMedium(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ));
  }
}

class TitleSmall extends StatelessWidget {
  final String text;
  const TitleSmall(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ));
  }
}

class LabelLarge extends StatelessWidget {
  final String text;
  const LabelLarge(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ));
  }
}

class LabelMedium extends StatelessWidget {
  final String text;
  const LabelMedium(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ));
  }
}

class LabelSmall extends StatelessWidget {
  final String text;
  const LabelSmall(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ));
  }
}

class BodyLarge extends StatelessWidget {
  final String text;
  const BodyLarge(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ));
  }
}

class BodyMedium extends StatelessWidget {
  final String text;
  const BodyMedium(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ));
  }
}

class BodySmall extends StatelessWidget {
  final String text;
  const BodySmall(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ));
  }
}
