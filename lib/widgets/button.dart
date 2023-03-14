import 'package:emergency_app/components/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
 final Color bColor;
 final String bText;
  const MyButton({super.key, required this.bColor, required this.bText, });

  @override
  Widget build(BuildContext context) {
    return  Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: blue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                      onPressed: (() {}),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                            Text(
                           bText,
                            style: const TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ],
                      )),
                )
                ;
  }
}