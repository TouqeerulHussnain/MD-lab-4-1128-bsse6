import 'package:flutter/material.dart';
void main() {
  runApp(Buttons());
}
class Buttons extends StatefulWidget {
  const Buttons({ Key? key }) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      color: Colors.blue,
                      margin: EdgeInsets.all(2),
                      child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Elevated Button'),
                      
                      
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      child:TextButton(onPressed: (){}, child: Text('Enable')),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.volume_up))
                    ),
                  ],
                    )
                )
              

              
            ],
          ),
        ),
      ),
    );
  }
}