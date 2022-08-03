import 'package:flutter/material.dart';
import 'package:path_site/password_text_field.dart';

abstract class password_alert {

  static is_correct(context){
    Navigator.pop(context);
    if ('12345' != password_field.password){
      show_wrong_dialog(context);
    } else {
      show_correct_dialog(context);
    }

  }

  static show_password_dialog(BuildContext context)  {
    return showDialog(
      context: context,
      builder: (context)
    {
      return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
        backgroundColor: Colors.white,
        title: Text(
            "Пароль:",
        textAlign: TextAlign.center),
        titleTextStyle:
        TextStyle(
            fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 30,
        ),
        actionsOverflowButtonSpacing: 20,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
                password_field.password = '';
              },
              child: Text("Вернуться",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15
              )
              )
          ),
     TextButton(
              onPressed: () {
                is_correct(context);
                password_field.password = '';
                password_field.password_controller.clear();
              },
              child: Text("Ввести",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                  ))
          )
        ],
        content:
     password_field()
      );
    }
    );
  }

  static show_wrong_dialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context)
    {
      return AlertDialog(
        backgroundColor: Colors.red,
        title: Text("Вы ошиблись"),
        content: Text("Получите пароль на указанном этапе."),
        actions: [
      TextButton(
      child: Text("Хорошо",
          style: TextStyle(
              color: Colors.black
          )),
      onPressed: () {
    Navigator.pop(context);
    },
      )
        ],
      );
  });}

  static show_correct_dialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context)
        {
          return AlertDialog(
            backgroundColor: Colors.green,
            title: Text("Всё верно"),
            content: Text("Идите на следующий этап."),
            actions: [
              TextButton(
                child: Text("Хорошо",
                    style: TextStyle(
                        color: Colors.black
                    )),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });}

}
