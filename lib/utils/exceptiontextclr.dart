import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class modified_text extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const modified_text({Key? key, required this.text, required this.color, required this.size}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return 

      Text(
        text,style: GoogleFonts.anton(
          color:Colors.black,fontSize:size
        ),
      );

    
  }
}


class rating extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const rating({Key? key, required this.text, required this.color, required this.size}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return 

      Text(
        text,style: GoogleFonts.anton(
          color:Colors.yellow,fontSize:size
        ),
      );

    
  }
}


class exceptiontextclr extends StatelessWidget {
  final String text;
 

  const exceptiontextclr({Key? key, required this.text,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return 

      Text(
        text,style: GoogleFonts.anton(
          color:Colors.black,fontSize: 30,
        ),
      );

    
  }
}


class descriptions extends StatelessWidget {
  final String text;
 

  const descriptions({Key? key, required this.text,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return 

      Text(
        text,style: GoogleFonts.anton(
          color:Colors.black,fontSize: 20,
        ),
      );

    
  }
}
