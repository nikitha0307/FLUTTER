import'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'flutter Navigation',
      home:HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Home Screen'),
      ),
      body:Center(
        child:ElevatedButton(
          onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child:Text('Go to SecondScreen'),
        ),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
appBar:AppBar(
  title:Text('SecondScreen'),
),
body:Center(
  child:ElevatedButton(
    onPressed:(){
      Navigator.pop(context);
    },
    child:Text('Back to Home Screen'),
  ),
),
    );
  }}