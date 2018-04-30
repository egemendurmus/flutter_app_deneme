import 'package:flutter/material.dart';


 class ViewUtility {
   static Color hexToColor(String hex, [Color out]) {

     if (out == null) {
       out = Color.createColor();
     }

     // Expand shorthand form (e.g. "03F") to full form (e.g. "0033FF")
     RegExp shorthandRegex = new RegExp("^#?([a-f\d])([a-f\d])([a-f\d])\$", caseSensitive:true);

     hex = hex.replaceFirst(shorthandRegex, r"$1$1$2$2$3$3");

     var result = new RegExp("^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})\$", caseSensitive:true).firstMatch(hex);

     if (result) {

       out.r = int.parse(result[1], radix:16);
       out.g = int.parse(result[2], radix:16);
       out.b = int.parse(result[3], radix:16);
     }

     return out;

   }}

