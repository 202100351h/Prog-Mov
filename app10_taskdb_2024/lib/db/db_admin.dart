import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbAdmin {
  Database? myDatabase;

  //Singleton
  static final DbAdmin db = DbAdmin.instance();

  DbAdmin.instance();

  Future<Database?> checkDatabase() async {
    if (myDatabase != null) {
      return myDatabase;
    }

    myDatabase = await initDatabase();
    return myDatabase;
  }

  Future<Database> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "TaskDB.db");
    print("creando base de datos !!!!");
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database dbx, int version) async {
        await dbx.execute(
            "CREATE TABLE TASK(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT, status TEXT)");
      },
    );
  }

  insertRawTask() async {
    Database? db = await checkDatabase();
    int res = await db!.rawInsert(
        "INSERT INTO TASK(title, description, status) VALUES('Ir a la U','Para apoyar a la huelga', 'Incompleto')");
    print(res);
  }

  insertTask() async {
    Database? db = await checkDatabase();
    int res = await db!.insert(
      "TASK",
      {
        "title": "Ir al mercado",
        "description": "Comprar viveres para la huelga",
        "status": "no realizado",
      },
    );
    print(res);
  }

  getRawTask() async {
    Database? db = await checkDatabase();
    List tasks = await db!.rawQuery("SELECT * FROM TASK");
    print(tasks);
  }

  getTask() async {
    Database? db = await checkDatabase();
    List tasks = await db!.query("TASK");
    print(tasks);
  }

  updateRawTask() async {
    Database? db = await checkDatabase();
    int res = await db!.rawUpdate(
        "UPDATE TASK SET title = 'Ir a la disco', description = 'Para tomar hasta trapear el piso', status = 'realizado' WHERE id = 2 ");
    print(res);
  }

  updateTask() async {
    Database? db = await checkDatabase();
    int res = await db!.update(
        "TASK",
        {
          "title": "Ir al Gym",
          "description": "Para tener un cuerpazo como el Men Lee",
          "status": "no realizado",
        },
        where: "id = 3");
  }

  deleteRawTask() async {
    Database? db = await checkDatabase();
    int res = await db!.rawDelete("DELETE FROM TASK WHERE id = 4");
    print(res);
  }

  deleteTask() async {
    Database? db = await checkDatabase();
    int res = await db!.delete("TASK", where: "id = 6");
    print(res);
  }
}
