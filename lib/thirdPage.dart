import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {
  final String texto;
  TextEditingController _textController = TextEditingController();

   ThirdPage({Key key, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
        title: Text("Pagina 3"),),
          body: Center(
            child:  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          

Expanded(
      flex: 1,
      child: Container( 
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
                MaterialButton(
                  child:Text(":)",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  color: Colors.grey,
                  onPressed: () {
                  Navigator.of(context).pop(texto + " " + _textController.text);
                  },
                ),
             
                MaterialButton(
                  child:Text(":(",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.of(context).pop(texto + " " + _textController.text);
                  },
                ),

                MaterialButton(
                  child:Text(":/",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.of(context).pop(texto + " " + _textController.text);
                  },
                ),

          ] 
        ),
        alignment: Alignment(-1.0, -1.0),
      ),
    ),
        ],)
        ),
    );
  }
}