import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
   const CustomElevatedButton({super.key, required this.list, required this.number});
  final List<String> list ;
  final int number ;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  int? selectedIndex ;
  @override
  Widget build(BuildContext context) {
    return  Row(children:  List.generate(widget.number, (index) {
          return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),

          child: ElevatedButton(
            onPressed: () {
              setState(() {
              selectedIndex = index; 
              });
            },
            
            style: ElevatedButton.styleFrom(
              backgroundColor: selectedIndex == index
                  ? Colors.black   
                  : Color(0xfffef7ff),
              foregroundColor: selectedIndex == index
                  ? Colors.white
                  : Colors.black,
            ), child: Text(widget.list[index + 1 ]),

            ),

            );
              }
            ),
            );
  }
}