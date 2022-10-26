import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String judul = "", desc = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Tile Klik'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(judul),
                subtitle: Text(desc),
                leading: CircleAvatar(),
                trailing: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (judul == "") {
                          judul = "Sutrisno";
                          desc = "Dosen UBSI Purwokerto";
                        } else {
                          judul = "";
                          desc = "";
                        }
                      });
                    },
                    child: Text('Klik Aku')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
