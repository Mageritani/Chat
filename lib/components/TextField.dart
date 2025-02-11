import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final String hint;
  final TextEditingController controller;
  const MyTextField({super.key, required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: hint == "password" ? true : false,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.tertiary),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary),),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: hint,
            hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
          )),
    );
  }
}
