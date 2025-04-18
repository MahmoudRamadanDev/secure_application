    import 'package:flutter/material.dart';

class ShowSnakBarTwo  {
  static  dynamic showSankBar ({required String exception , required BuildContext context , required Color color}) {
  return  ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text(exception , style: const TextStyle(fontSize: 20 ),) , backgroundColor: color, duration:const Duration(seconds: 3) ,));
}

}