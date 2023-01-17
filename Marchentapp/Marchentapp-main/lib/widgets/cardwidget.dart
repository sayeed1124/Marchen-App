import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marchentapp/widgets/textwidget.dart';

class CardWidget extends StatelessWidget {
  CardWidget(
      {super.key,
      required this.text,
      required this.title,
      required this.color,
      required this.procecolor,
      this.istitle = false,
      this.fs = 15,
      this.pfs = 18});

  String text;
  String title;
  Color color;
  Color procecolor;
  bool istitle;
  double fs;
  double pfs;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffF7F7F7),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Textwidget(
                text: title,
                color: color,
                fs: fs,
                istitle: istitle,
              ),
              SizedBox(
                height: 5,
              ),
              Textwidget(
                text: text,
                color: procecolor,
                istitle: istitle,
                fs: pfs,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
