import 'package:path_provider/path_provider.dart';
import 'dart:io';

class FileUtils{
  static Future<String> get getFilePath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> get getFile async {
    final path = await getFilePath;
    return File("$path/data.txt");
  }

  static Future<File> saveFile(String data) async {
    final file = await getFile;
    return file.writeAsString(data);
  }

  static Future<String> readFile() async {
    try{
      final file = await getFile;
      String fileContent = await file.readAsString();
      return fileContent;
    }
    catch(e) {
      return "";
    }
  }
}