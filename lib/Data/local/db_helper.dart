import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper{
  //making Singleton (means Only single instance is created of this class), 
  // Purpose : Only one database is created (or to remove the chance to create multiple DB)
  DBHelper._();
  static final getInstance = DBHelper._();

    //DB Methods Here
  //1. Open Db ( check path -> if exist then Open ,else create DB)

   Database? myDB;

     Future<Database> getDB() async{
    if(myDB != null){
      return myDB!;
    }else{
      
      myDB = await openDB();
      return myDB!;
    }

   }
   Future<Database> openDB() async{

      Directory appDir = await getApplicationDocumentsDirectory();

      String dbPath = join(appDir.path , "cafeDB.db");

      return await openDatabase(dbPath ,onCreate: (db, version) {

        //create all your tables here
        db.execute("create cafe_table (s_no integer primary key autoincrement ,tittle text , desc text )");
        
      },);
       
   }

}