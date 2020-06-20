
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  var _text = TextStyle();
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Text Color App',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Simple Text Color App'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
           
            Container( padding:EdgeInsets.symmetric(vertical: 200),
              child: Text('Cambia el color del Texto!!',
              style: _text
              )
              
              ),
            
            _actionButton()
              
            ],
          ),
        ),
      ),
    );
  }

  Widget _actionButton(){

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
  
      RaisedButton(
             padding: EdgeInsets.symmetric(horizontal:20.0),
            onPressed: () {
             
              setState(() {
                _text = new TextStyle(color: Colors.blue);
              });
            },
            child: Text('Azul'), 
            splashColor: Colors.amber,
            color: Colors.orange,
            elevation: 10.0,
          ),

     
  SizedBox(width: 20.0,),
      RaisedButton(
             padding: EdgeInsets.symmetric(horizontal:20.0),
            onPressed: () {
             
              setState(() {
                _text = new TextStyle(color: Colors.green);
              });
            },
            child: Text('Verde'), 
            splashColor: Colors.amber,
            color: Colors.orange,
            elevation: 10.0,
          ),

   SizedBox(width: 20.0,),
       RaisedButton(
             padding: EdgeInsets.symmetric(horizontal:20.0),
            onPressed: () {
             
              setState(() {
                _text = new TextStyle(color: Colors.red);
              });
            },
            child: Text('Rojo'), 
            splashColor: Colors.amber,
            color: Colors.orange,
            elevation: 10.0,
          ),
          
      ],
  );
}

}