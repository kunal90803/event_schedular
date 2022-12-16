import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/event.dart';

void main() => runApp(const FIRSTAPP());

class FIRSTAPP extends StatefulWidget {
  const FIRSTAPP({Key? key}) : super(key: key);
  _FIRSTAPPState createState() => _FIRSTAPPState();
}

class _FIRSTAPPState extends State<FIRSTAPP> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xcc6f52dc),
          appBar: AppBar(
            title: Text('Event Schedular'),
            backgroundColor: Color(0xcc1d0182),
          ),
          body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context, index) => _list[index],
          ),
          floatingActionButton: Builder(builder: (context) {
            return FloatingActionButton(
              onPressed: () async {
                String newtext = await Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Event()));
                setState(() {
                  _list.add(
                    Container(
                      padding: EdgeInsets.all(35),
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          new BoxShadow(
                            color: Color(0xffdde5dd),
                            offset: new Offset(6.0, 6.0),
                          ),
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          newtext,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                });
              },
              child: Icon(Icons.add),
              backgroundColor: Color(0xcc1d0182),
            );
          }),
        ));
  }
}
