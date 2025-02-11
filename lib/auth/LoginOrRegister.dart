import 'package:chat/login.dart';
import 'package:chat/register.dart';
import 'package:flutter/material.dart';

class loginOrRegister extends StatefulWidget {
  const loginOrRegister({super.key});

  @override
  State<loginOrRegister> createState() => _loginOrRegisterState();
}

class _loginOrRegisterState extends State<loginOrRegister> {

  bool IsLogin = true;

  void togglePages(){
    setState(() {
      IsLogin = !IsLogin;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(IsLogin){
      return login(onTap: togglePages,);
    }else{
      return register(onTap: togglePages,);
    }
  }
}
