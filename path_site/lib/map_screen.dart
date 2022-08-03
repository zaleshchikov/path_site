import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'hint_screen.dart';
import 'appbar.dart';

class map extends StatelessWidget {
  const map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.fredoka().fontFamily
      ),
        home : Builder(builder: (BuildContext context) {
          return
            Scaffold(
              appBar: AppBar(
                leading:
                Padding(
                    padding: EdgeInsets.only(
                        left: 10
                    ),
                    child: SvgPicture.asset(
                      'assets/glass.svg',
                      //   color: Colors.white,
                    )),
                title: Center(
                    child: Text(
                      '•  •  •  •  •',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                      ),
                    )),
                backgroundColor: Colors.black,
                bottom: PreferredSize(
                    child: Container(
                      color: Colors.white,
                      height: 4.0,
                    ),
                    preferredSize: Size.fromHeight(0.5)),
                actions: [
                  IconButton(
                    iconSize: MediaQuery.of(context).size.height/18,
                      padding: EdgeInsets.all(0),
                          onPressed: () {
                            hint_dialog.show_hint_dialog(context);
                          },
                          icon: Center(
                              child: Icon(
                            Icons.help,
                            color: Colors.white,
                          )))
                ],
              ),
              backgroundColor: Colors.black,
        body: Center(
              child: SingleChildScrollView(
                  child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/50,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                /*boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 25.0,
                  ),
                ],*/
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(
                        5.0)
                    ),
              ),
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width / 1.3,
            ),
            Container(
              height: MediaQuery.of(context).size.height/20,
            ),
            purple_button()
          ],
        ))),
      );
    }));
  }
}
