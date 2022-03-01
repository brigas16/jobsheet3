import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Masukkan Suhu Dalam Celcius'),
              ),
              Row(
                children: const <Widget>[
                  Expanded(
                    child:
                        Text('Suhu dalam Kelvin', textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child:
                        Text('Suhu dalam Reamor', textAlign: TextAlign.center),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
