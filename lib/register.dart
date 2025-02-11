import 'package:flutter/material.dart';

import 'components/TextField.dart';
import 'components/button.dart';

class register extends StatelessWidget {
  register({super.key, required this.onTap});

  final void Function()? onTap;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _comfirmpasswordController =
      TextEditingController();

  void Register() {}

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
              "Let's create an account for you ! ",
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
              height: 15,
            ),
            MyTextField(
              hint: "Comfirm password",
              controller: _comfirmpasswordController,
            ),
            SizedBox(
              height: 16,
            ),
            button(
              btn: "register",
              tap: Register,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                    child: Text(
                  " Login now",
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
