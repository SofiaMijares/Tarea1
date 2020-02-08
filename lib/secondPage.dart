
import 'package:flutter/material.dart';
import 'dart:math';

class SecondPage extends StatelessWidget {
  final String texto;
  TextEditingController _textController = TextEditingController();

  SecondPage({Key key, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 2"),
      ),
      body: Center(
        child: Container(
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.blue[300],
                    Colors.blue[50],
                  ],
                ),
              ),
            
          child: Center(
          child: Column(
          children: <Widget>[
            
            

            Padding(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 30),
              //padding: EdgeInsets.all(24.0),
              child: Text("Genere número random", 
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),

          new Roller(),
            /*MaterialButton(
              child: Text("Generar"
              ),
              color: Colors.white,
              onPressed: () {
                
                Navigator.of(context).pop(texto + " " + _textController.text);
              },
            ),*/

            MaterialButton(
              child: Text("Guardar"
              ),
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pop(texto + " " + _textController.text);
              },
            ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Roller extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _TheRandom();
    }
}

class _TheRandom extends State<Roller>{
  int _number = 0;
  void GenerateRandomNumber(){
    final _random = new Random();
    int next(int min, int max) => min+_random.nextInt( max - min);
    setState(() {
      _number = next(1, 100);
    });
  }

  @override
  Widget build(BuildContext context) {

      return Column(
        children: [

        Text(
          '$_number',
        ),

        MaterialButton(
          onPressed: GenerateRandomNumber,
          color: Colors.white,
          child: Text("generar"),
        ),
      ],
    );
  }
}


