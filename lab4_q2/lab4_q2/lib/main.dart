import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ColumnAlign());
}

class ColumnAlign extends StatefulWidget {
  const ColumnAlign({ Key? key }) : super(key: key);

  @override
  State<ColumnAlign> createState() => _ColumnAlignState();
}

class _ColumnAlignState extends State<ColumnAlign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('lab4')),
        body: Center(
          child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child:Container (
                    width: 200,
                    height: 500,
                    color: Colors.blue,
                  )
                  ),
                  Expanded(
                    flex: 2,
                  child: Container(
                    width:200,
                    height: 500,
                    color: Colors.yellow,
                  )
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                    width: 200,
                    height: 500,
                    color: Colors.blue,
                  )
                  )
              ],
        ),
        )
      ),
    );
  }
}

