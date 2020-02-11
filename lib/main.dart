import 'package:flutter/material.dart';
import 'package:tarea1/secondPage.dart';
import 'package:tarea1/thirdPage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tarea 1'),
        ),
        body: HomePage(),
      ),
    );
  }
}
//PRUEBA
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

  

class _HomePageState extends State<HomePage> {
String _callBackParams;
String _callBackParams2;
final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[

    Text("BIENVENIDOS", 
      style: TextStyle(
        fontFamily: "Pacifico",
        fontSize: 48,
        color: Colors.grey,
        ),
      textAlign: TextAlign.center,
    ),

      
    Image.asset(
      "assets/images/Dart_side.png",
      height: 200,
    ),
 

    Expanded(
      flex: 1,
      child: Container( 
        width: MediaQuery
          .of(context)
          .size
          .width,
      child: Text("Seleccione la acción a realizar:", 
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      ),
    ),

    Expanded(
      flex: 1,
      child: Container( 
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            
                MaterialButton(
                  child:Text("Pagina 2",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                  _showAlertDialog(context);
                  },
                ),
             
                MaterialButton(
                  child:Text("Pagina 3",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  color: Colors.blue,
                  onPressed: ()async {
                    Navigator.of(context).pop();
                    await Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ))
                    .then(
                      (response){
                        _callBackParams2 = response;
                      }
                    );

                  },
                ),

          ] 
        )
      ),
    ),

    Expanded(
      flex: 1,
      child: Container( 
        width: MediaQuery
          .of(context)
          .size
          .width,
      child: Text("Pg.2 => $_callBackParams", 
      style: TextStyle(
        color: Colors.grey,
        ),
        textAlign: TextAlign.center,
      ),
      ),
    ),

    Expanded(
      flex: 1,
      child: Container( 
        width: MediaQuery
          .of(context)
          .size
          .width,
      child: Text("Pg.3 => $_callBackParams2", 
      style: TextStyle(
        color: Colors.grey,
        ),
        textAlign: TextAlign.center,
      ),
      ),
    ),
    ],
    );
  }
_showAlertDialog(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (context) {
          TextEditingController _textController = TextEditingController();

          return AlertDialog(
            title: Text("Add data"),
            content: TextField(
              controller: _textController,
              maxLength: 10,
              decoration: InputDecoration(
                labelText: "Ingrese palabra",
                hintText: "Palabra",
              ),
            ),
            actions: <Widget>[
              RaisedButton(
                child: Text("Aceptar"),
                onPressed: () async {
                  Navigator.of(context).pop();
                  await Navigator.of(context)
                      .push(
                    MaterialPageRoute(builder: (context)=> SecondPage(texto: _textController.text)),
                  )
                      .then(
                    (response) {
                      _callBackParams = response;
                    },
                  );
                },
              ),
              RaisedButton(
                child: Text("Cancelar"),
                onPressed: () {},
              ),
            ],
          );
        });
  }




}





