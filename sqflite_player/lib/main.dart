import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'player_model.dart';

dynamic database;
void insertPlayerData(PlayerModel player) async {
  Database localDB = await database;
  localDB.insert(
    "Player",
    player.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Map>> getPlayerData() async {
  Database localDB = await database;
  return await localDB.query("Player");
}

void updatePlayerData(PlayerModel player) async {
  Database localDB = await database;
  localDB.update(
    "Player",
    player.playerMap(),
    where: "jerNo = ?",
    whereArgs: [player.jerNo],
  );
}

void deletePlayerData(int jerNo) async {
  Database localDB = await database;
  localDB.delete(
    "Player",
    where: "jerNo = ?",
    whereArgs: [jerNo],
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), 'CricPlayer1.db'),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE Player(
          playerName TEXT, 
          jerNo INTEGER PRIMARY KEY,
          runs INTEGER, 
          avg REAL
        )
      ''');
    },
  );

  PlayerModel player1 = PlayerModel(
    playerName: "Virat Kohli",
    jerNo: 18,
    runs: 12000,
    avg: 58.16,
  );
  PlayerModel player2 = PlayerModel(
    playerName: "Rohit Sharma",
    jerNo: 45,
    runs: 9500,
    avg: 48.96,
  );
  insertPlayerData(player1);
  insertPlayerData(player2);

  print(await getPlayerData());

  player1 = PlayerModel(
    playerName: player1.playerName,
    jerNo: player1.jerNo,
    runs: player1.runs + 100,
    avg: player1.avg,
  );
  updatePlayerData(player1);

  print(await getPlayerData());

  deletePlayerData(player1.jerNo);

  print(await getPlayerData());
}
