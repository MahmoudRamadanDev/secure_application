
import 'package:flutter/material.dart';
import 'package:secure_mindes/constant.dart';

class CustomTextField extends StatelessWidget {
 const CustomTextField({super.key, required this.obscureText, required this.color, this.onChanged,  this.labelText});

  final bool obscureText ;
  final Color color ;
  final void Function(String)? onChanged ;
  final String? labelText ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.3,
      child: TextFormField(
                  onChanged: onChanged ,
                  obscureText: obscureText,
                    maxLines: null,
                    cursorHeight: 24,
                    textAlignVertical: TextAlignVertical.top,
                    keyboardType: TextInputType.multiline,
                  style:  TextStyle(fontSize: 24 , color: color),
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    contentPadding:  EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                    labelText: labelText ,
                    labelStyle: TextStyle(fontSize: 24 , color: kPrimaryColor),
                    hintStyle: const TextStyle(fontSize: 18 , color: kPrimaryColor),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5) ,
                      borderSide: const BorderSide(color: kPrimaryColor) ,
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5) ,
                      borderSide: const BorderSide(color: kPrimaryColor),
                    ),
                  ),
                  ),
    );
  }
}