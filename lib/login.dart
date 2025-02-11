import 'package:chat/components/TextField.dart';
import 'package:chat/components/button.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  login({super.key,required this.onTap});

  final void Function()? onTap;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void Login() {
    print(_emailController);
    print(_passwordController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Welcome back ! you've been missed !",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16),
            ),
            SizedBox(
              height: 16,
            ),
            MyTextField(
              hint: "Email",
              controller: _emailController,
            ),
            SizedBox(
              height: 15,
            ),
            MyTextField(
              hint: "password",
              controller: _passwordController,
            ),
            SizedBox(
              height: 16,
            ),
            button(
              btn: "Login",
              tap: Login,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                    child: Text(
                  "Register now",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
