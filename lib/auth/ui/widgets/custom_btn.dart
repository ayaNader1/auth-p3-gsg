import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Function function;
  String label;
  CustomButton(this.function, this.label);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: RaisedButton(
        color: Color(0xff6B53C3),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {
          function();
        },
        child: Text(label,style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
class CustomButtonSignUp extends StatelessWidget {
  Function function;
  String label;
  CustomButtonSignUp(this.function, this.label);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: RaisedButton(
        color: Color(0xffAB5FD0),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {
          function();
        },
        child: Text(label,style: TextStyle(fontSize: 20),),
      ),
    );
  }
}