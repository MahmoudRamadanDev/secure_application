import 'package:flutter/material.dart';
import 'package:secure_mindes/widgets/custom_link.dart';
import 'package:secure_mindes/widgets/enc_dec_body.dart';

class DecryptionView extends StatelessWidget {
  const DecryptionView({super.key}); 
  
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Expanded(child: EncDecBody(textOne: "Encrypted", textTow: "Decryption", textThree: "Input", textFour: "Decrypted",
      widget: CustomLink(textLink: "You Can Return Encryption Page", onTap: () {
      Navigator.pop(context); 
      },
      ),
      ),
      ),
    );
  }
}