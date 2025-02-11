import 'package:flutter/material.dart';

class button extends StatelessWidget {

  final String btn;
  final void Function()? tap;
  const button({super.key, required this.btn,required this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(16)
        ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Text(btn,style: TextStyle(color: Theme.of(context).colorScheme.primary),),
        ),
      ),
    );
  }
}
