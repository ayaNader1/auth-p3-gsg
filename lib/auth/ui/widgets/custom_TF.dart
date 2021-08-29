import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  String label,hint;
  TextEditingController controller;
  CustomTextfield(this.label, this.hint,this.controller);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: TextField(
        cursorColor: Color(0xff5D39BA),
        controller: this.controller,
        decoration: InputDecoration(
            labelText: this.label,
            hintText: this.hint,
            labelStyle: TextStyle(color: Color(0xffF5A623)),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff5D39BA)),

            )
          // border : OutlineInputBorder(
          //     borderSide: BorderSide(color: Color(0xff5D39BA))
          // )
        ),
        style: TextStyle(
            color: Color(0xff5D39BA)
        ),
      ),
    );
  }
}