import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcc6f52dc),
      appBar: AppBar(
        title: Text("NEW EVENT"),
        backgroundColor: Color(0xcc1d0182),
      ),
      body: Center(
        child: Column(children: [
          //  mainAxisAlignment: MainAxisAlignment.Center,
          Padding(
            padding: const EdgeInsets.only(
                top: 150, bottom: 20, left: 25, right: 25),
            child: TextField(
              controller: _textEditingController,
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                filled: true,
                fillColor: Color(0xcc4e2dc8),
                hintText: 'EVENT',
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffdbd7e7),
                ),
                prefixIcon: Icon(
                  Icons.calendar_today_outlined,
                  color: Color(0xffdbd7e7),
                ),
              ),
            ),
          ),
          Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  String newevent = _textEditingController.text;
                  Navigator.of(context).pop(newevent);
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Color(0x80b7b3c6), fixedSize: const Size(300, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    textStyle: const TextStyle(
                      fontSize: 24,
                    )),
                child: Text("ADD"),
              )),
        ]),
      ),
    );
  }
}
