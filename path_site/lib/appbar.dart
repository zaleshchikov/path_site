import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class appbar extends StatelessWidget with PreferredSizeWidget{
  const appbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        '.  .  .  .  .',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold
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
        Center(
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.help,
              color: Colors.white,
              size: MediaQuery.of(context).size.height/18,
            )))
      ],
    );
  }
}
