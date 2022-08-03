import 'package:flutter/material.dart';

class password_field extends StatelessWidget {
  const password_field({Key? key}) : super(key: key);

  static String password = '';
  static TextEditingController password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [

        /*Container(
          height: MediaQuery.textScaleFactorOf(context)*27*2.7,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 25.0,
                spreadRadius: -10
              ),
            ],
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(
                20.0)
            ),
          ),
        ),*/

          Container(
            //height: MediaQuery.textScaleFactorOf(context)*27*16,
              child: TextField(
                controller: password_controller,
      maxLength: 5,
      style: TextStyle(
        fontSize: MediaQuery.textScaleFactorOf(context)*27,
        letterSpacing: 5,
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.black, width: 5.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.black, width: 5.0),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always
      ),
      onChanged: (value){
        password = value;
        print(password);
      },
    ))
    ]
    );
  }
}
