import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

text({required String textname,required double textsize}){
  return Text(textname,style:GoogleFonts.judson(fontSize: textsize,
  color: Color.fromRGBO(84, 67, 114,1),
  fontWeight: FontWeight.bold)
  // TextStyle(color: const Color.fromRGBO(84, 67, 114,1),
  // fontWeight: FontWeight.bold,fontSize: textsize),
  );
}