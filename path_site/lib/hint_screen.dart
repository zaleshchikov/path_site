import 'package:flutter/material.dart';

abstract class hint_dialog {

  static show_hint_dialog (context) {
    return showDialog(
        context: context,
        builder: (context)
    {
      return AlertDialog(
          insetPadding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height/70
          ),
          contentPadding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          content: SingleChildScrollView(
          child:
          Stack(
          children: [
            Positioned(
                top: 0.0,
                right: 5.0,
                child: Center(
                    child: IconButton(
                padding: EdgeInsets.all(
                  0.0
                ),
                        iconSize: MediaQuery.of(context).size.height/18,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Center(
                    child:Icon(
                      Icons.close,
                      color: Colors.black,
                    ))))),
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Container(
                  height: MediaQuery.of(context).size.height/70,
                ),
                Text(
          'Подсказки',
            style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.textScaleFactorOf(context)*20,
                fontWeight: FontWeight.bold
            ),
                  textAlign: TextAlign.center,
          ),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1.2,
                  width: MediaQuery.of(context).size.width/2,
                )
              ]
      )])));
  });
  }

}
