import 'package:flutter/material.dart';
import 'package:path_site/password_alert.dart';

class purple_button extends StatelessWidget {
  const purple_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Card(
        shape: StadiumBorder(),
        elevation: 8,
        shadowColor: Colors.white,
        child: Container(
      height: MediaQuery.of(context).size.height/10,
        width: MediaQuery.of(context).size.width/1.2,
        /*decoration: const BoxDecoration(
          boxShadow: [
          BoxShadow(
            color: Colors.white,
          blurRadius: 25.0,
        ),
    ],
    ),*/
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0),
            shape: StadiumBorder(),
          primary: Colors.white,
          onPrimary: Colors.white,
        ),
        onPressed: (){
          password_alert.show_password_dialog(context);
        },
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
        alignment: Alignment.center,
              child:
              Text(
              'Следующий этап',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25
            ),
          )),
         /* Icon(
              Icons.navigate_next,
            size: 40,
            color: Colors.white,
          )*/
        ]
        )
    )));
  }
}
