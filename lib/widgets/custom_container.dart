import 'package:flutter/material.dart';
import 'package:secure_mindes/constant.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                  color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Encryption" , style: TextStyle(fontSize: 20 , color: Colors.white),)),
                ),
              );
  }
}