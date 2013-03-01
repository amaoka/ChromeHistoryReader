// This code is based on "SQLite_example1" included in BezierSQLib library.

import de.bezier.data.sql.*;

SQLite db;

void setup()
{
    size( 100, 100 );
    
    db = new SQLite( this, "/Users/amaoka/Library/Application Support/Google/Chrome/Profile 1/History" );  // open database file
    if ( db.connect() )
    {
       db.query( "select datetime(last_visit_time/1000000-11644473600,'unixepoch'),url from  urls order by last_visit_time desc");//"SELECT name as \"Name\" FROM SQLITE_MASTER where type=\"table\"" );
       while(db.next()){
        
         println(db.getString("datetime(last_visit_time/1000000-11644473600,'unixepoch')"));
         println(db.getString("url"));
       } 
      
    }
}

