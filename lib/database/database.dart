import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model/user.dart';

class DataBase{

  Future<Database> initializedDB() async{
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'sqlitedbchinook.db'),
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute("CREATE TABLE user2_ (id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT, userName TEXT);");
      }
    );
  }

  //insertion des donnees
  Future<int> insertUser(List<User> user) async {
    int result = 0;
    final Database db = await initializedDB();
    for (var user in user) {
      result = await db.insert('user2_', user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
    }
 
    return result;
  }

  //retrouver les donnees
  Future <List<User>> retrieveUser() async {
    final Database db = await initializedDB();
    final List<Map<String, Object?>> queryResult = await db.query('user2_');
    return queryResult.map((e) => User.fromMap(e)).toList();
  }

  // delete user
  Future<void> deleteUser(int id) async {
    final db = await initializedDB();
    await db.delete(
      'user2_',
      where: "id = ?",
      whereArgs: [id],
    );
  }

}