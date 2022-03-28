import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';
void main() {
  runApp(diceRoll());
  }
class diceRoll extends StatefulWidget {
  const diceRoll({ Key? key }) : super(key: key);

  @override
  State<diceRoll> createState() => _diceRollState();
}

class _diceRollState extends State<diceRoll> {
  double dice = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          body: SafeArea(
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (() {
                            setState((){
                                dice = Random().nextInt(6)+1;
                              }
                            );
                          }
                        ), child: Image.asset('images/dice$dice.png')
                      )
                      
                    ),
                  ]
              ),
              )
            ),
          ),
        ),
      ),
    );
  }
}