import 'package:flutter/material.dart';
import 'package:secure_mindes/views/decryption_view.dart';
import 'package:secure_mindes/widgets/custom_link.dart';

import 'package:secure_mindes/widgets/enc_dec_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: EncDecBody(
          textOne: "Encryption",
          textTow: "Encrypted",
          textThree: "Output",
          textFour: "Encrypted",
          widget: CustomLink(textLink: "You Can Go To Decryption Page" , onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DecryptionView();
              },
            ),
          );
          },
          ),
          ),
        ),
    );
  }
}
