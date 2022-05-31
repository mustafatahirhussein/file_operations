import 'package:flutter/material.dart';

import 'fileoper.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("File Operations"),
        ),
        body: FileOper(),
      ),
    )
  );
}