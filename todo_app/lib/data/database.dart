import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TodoDatabase {
  //create database
  Future<Database> createDB() async {
    Database db = await openDatabase(
      join(await getDatabasesPath(), 'TodoDB.db'),
      version: 1,
      onCreate: (Database db, int version) {
        db.execute('''
          CREATE TABLE Todo (
                id INTEGER PRIMARY KEY AUTOINCREMENT, 
                title TEXT, 
                description TEXT, 
                isDone INTEGER,
                date TEXT
                )
        ''');
      },
    );
    return db;
  }

  //GET DATA
  Future<List<Map>> getTodoItems() async {
    Database localDb = await createDB();
    List<Map> list = await localDb.query('Todo', orderBy: 'id DESC');
    return list;
  }

  //Add DATA
  void insertTodoItem(Map<String, dynamic> obj) async {
    Database localDb = await createDB();
    await localDb.insert(
      'Todo',
      obj,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  //Update DATA
  Future<void> updateTodoItem(Map<String, dynamic> obj) async {
    Database localDb = await createDB();
    await localDb.update(
      'Todo',
      obj,
      where: 'id = ?',
      whereArgs: [obj['id']],
    );
  }
  //Delete DATA
  Future<void> deleteTodoItem(int index) async {
    Database db = await createDB();
    await db.delete(
      'Todo',
      where: 'id = ?',
      whereArgs: [index],
    );
  }
}
