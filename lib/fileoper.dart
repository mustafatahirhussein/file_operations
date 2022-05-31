import 'file_utils.dart';
import 'package:flutter/material.dart';

class FileOper extends StatefulWidget {
  @override
  _FileOperState createState() => _FileOperState();
}

class _FileOperState extends State<FileOper> {
  String record = "No Data";
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: myController,
            maxLines: 3,
          ),
          RaisedButton(
            child: Text('Write to File'),
            onPressed: () {
              FileUtils.saveFile(myController.text);
            },
          ),
          RaisedButton(
            child: Text('Read from File'),
            onPressed: () {
              FileUtils.readFile().then((value) {
                setState(() {
                  record = value;
                });
              });
            },
          ),
          Text('$record')
        ],
      ),
    );
  }
}
