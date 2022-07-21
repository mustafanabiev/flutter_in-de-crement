import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  final Function()? onPressed;
  final Icon? icon;
  const ElevatedBtn({
    Key? key,

    this.onPressed,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFF005EA6),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: icon, //const Icon(Icons.remove),
      ),
    );
  }
}
