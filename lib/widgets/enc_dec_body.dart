import 'package:flutter/material.dart';
import 'package:secure_mindes/constant.dart';
import 'package:secure_mindes/widgets/custom_container.dart';
import 'package:secure_mindes/widgets/custom_elevated_button.dart';
import 'package:secure_mindes/widgets/custom_text_field.dart';

class EncDecBody extends StatefulWidget {
  const EncDecBody({super.key, required this.textOne, required this.textTow, required this.textThree , this.textFour, required this.widget});
  final String textOne ;
  final String textTow ;
  final String textThree ;
  final String? textFour ;
  final Widget widget ;
  @override
  State<EncDecBody> createState() => _EncDecBodyState();
}

class _EncDecBodyState extends State<EncDecBody> {

  List<String> listOfStrings = [" ","128 Bits" , "192 Bits" , "256 Bits"];

  List<String> listOfStringsTow = [" " , "CBC" , "ECB"];

  List<String> listOfStringsThree = [" " , "BASE64" , "HEX"];

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(top: 10 , left: 15 , right: 15),
        child: ListView (
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 40 , left:  0 , right:  0 , bottom:  20),
          children: [
            Center(child: Text("AES ${widget.textOne.contains("Encryption") ? widget.textOne : widget.textOne.contains("Decryption") ? widget.textOne : widget.textTow }" , style: TextStyle(fontSize: 35),)),

            SizedBox(height: 15,),

            Text("${widget.textOne.contains("Encryption") ? widget.textOne : widget.textOne.contains("Encrypted") ? widget.textOne : widget.textTow } Text" , style: TextStyle(fontSize: 24),),

            SizedBox(height: 25,),

            CustomTextField(obscureText: false, color: Colors.black , labelText: "${widget.textOne.contains("Encryption") ? widget.textOne : widget.textOne.contains("Encrypted") ? widget.textOne : widget.textTow } Text",),
            
            SizedBox(height: 10,),

            Text("Secret Key" , style: TextStyle(fontSize: 24),),

            SizedBox(height: 15,),

            CustomTextField(obscureText: false, color: Colors.black , labelText:"Secret Key",),

            SizedBox(height: 10,),

            Text("Encryption Key Size" , style: TextStyle(fontSize: 24),),

            SizedBox(height: 10,),

            CustomElevatedButton(list: listOfStrings, number: 3),

            SizedBox(height: 10,),

            Text("Encryption Mode" , style: TextStyle(fontSize: 24),),

              CustomElevatedButton(list: listOfStringsTow, number: 2),

              SizedBox(height: 10,),

            Text("IV (optional)" , style: TextStyle(fontSize: 24),),

              SizedBox(height: 10,),

              CustomTextField(obscureText: false, color: kPrimaryColor, labelText: "IV"),

              SizedBox(height: 10,),

              Text("${widget.textThree} Format" , style: TextStyle(fontSize: 24),),

              SizedBox(height: 10,),

              CustomElevatedButton(list: listOfStringsThree, number: 2),
              
              SizedBox(height: 20,),

            Text("${widget.textFour!.contains("Decrypted")  ? widget.textFour : widget.textFour!.contains("Encrypted") ?  "Encrypted" : "Decrypted" } Text" , style: TextStyle(fontSize: 24),),

              SizedBox(height: 10,),

            CustomTextField(obscureText: false, color: kPrimaryColor, labelText: "${widget.textFour!.contains("Decrypted")  ? widget.textFour : widget.textFour!.contains("Encrypted") ?  "Encrypted" : "Decrypted" } Text"),
              
              SizedBox(height: 25,),

              CustomContainer(),

              SizedBox(height: 25,),

              widget.widget ,

              SizedBox(height: 15,),

          ],
        ),
      ) ;
  }
}