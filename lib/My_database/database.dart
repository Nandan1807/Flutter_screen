import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Mydatabase{
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'app_db.db');
    return await openDatabase(databasePath);
  }

  Future<bool> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "app_db.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'app_db.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
      return true;
    }
    return false;
  }

  Future<List<Map<String,dynamic>>> getAll () async {
    Database db = await initDatabase();
    List<Map<String,dynamic>> userlist = await db.rawQuery("select * from user");
    return userlist;
  }

  Future<Map<String,dynamic>> getById (int id) async {
    Database db = await initDatabase();
    List<Map<String, Object?>> userlist = await db.rawQuery("select * from user where uid = $id");
    return userlist[0];
  }

  Future<void> insertUser (String username,String email) async {
    Database db = await initDatabase();
    await db.rawQuery('insert into user (username,email) values("$username","$email")');
  }

  Future<void> updateUser (int id,String username,String email) async {
    Database db = await initDatabase();
    await db.rawQuery('update user set username = "$username",email = "$email" where uid = $id');
  }

  Future<void> deleteUser (int id) async {
    Database db = await initDatabase();
    await db.rawQuery('delete from user where uid = $id');
  }
}