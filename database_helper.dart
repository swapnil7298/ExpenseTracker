import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqlite_api.dart';

class DatabaseHelper {
  // Static method to get the database instance.
  static Future<Database> database() async {
    // Get the default database location.
    final dbPath = await sql.getDatabasesPath();
    // Open the database. `onCreate` is called if the database does not exist.
    return sql.openDatabase(path.join(dbPath, 'expenses.db'),
        onCreate: (db, version) {
      // Execute a SQL query to create the 'expenses' table.
      return db.execute(
        'CREATE TABLE expenses(id TEXT PRIMARY KEY, title TEXT, amount REAL, date TEXT, category TEXT)',
      );
    }, version: 1);
  }

  // Static method to insert data into a table.
  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await DatabaseHelper.database();
    // Insert the data into the specified table.
    // `conflictAlgorithm.replace` will replace the row if it already exists.
    db.insert(
      table,
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  // Static method to get all data from a table.
  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DatabaseHelper.database();
    // Query the table and return all rows.
    return db.query(table);
  }

  // Static method to delete an item from the table.
  static Future<void> delete(String table, String id) async {
    final db = await DatabaseHelper.database();
    // Delete the row with the given id.
    await db.delete(table, where: 'id = ?', whereArgs: [id]);
  }
}