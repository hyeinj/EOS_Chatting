import 'package:flutter/material.dart';

import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0, left: 0, right: 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.fill,
                 ),
                ),
                  child: Container(
                    padding: EdgeInsets.only(top: 90, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(text: 'Welcome ', style: TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 1.0),
                          children: [
                            TextSpan(text: ' to EOS chat', style: TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 1.0, fontWeight: FontWeight.bold,)
                            )
                          ]
                       )
                     ),
                    SizedBox( height: 5.0),
                    Text('Sign up to continue', style: TextStyle(letterSpacing: 1.0, color: Colors.white,),
                    )],),),),),
          Positioned(
            top: 150,
              child: Container(
                height: 280.0,
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 5,
                )
              ]
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Column(
                        children: [
                          Text(
                            'LOGIN', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                          color: !isSignupScreen ? Palette.activeColor : Palette.textColor1),
                          ),
                          if(!isSignupScreen)
                          Container(
                            margin: EdgeInsets.only(top: 3),
                            height: 2,
                            width: 55,
                            color: Colors.green,
                          )],),),
                    GestureDetector(
                      child: Column(
                        children: [
                          Text(
                            'SIGNUP', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                          color: !isSignupScreen ? Palette.activeColor : Palette.textColor1),
                          ),
                          if(!isSignupScreen)
                          Container(
                            margin: EdgeInsets.only(top: 3),
                            height: 2,
                            width: 55,
                            color: Colors.green,
                          )],))],),
                Container(
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle, color: Palette.iconColor,),
                            enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Palette.textColor1), borderRadius: BorderRadius.all(Radius.circular(35.0))
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Palette.textColor1), borderRadius: BorderRadius.all(Radius.circular(35.0))
                            ),),)]),))]),))],));
  }
}

