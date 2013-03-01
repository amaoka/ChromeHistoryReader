Chrome History Reader
===================

Reading Chrome browser history data into processing.

This code is based on "SQLite_example1" included in BezierSQLib library.

To use ChromeHistoryReader follows the instruction.

1. Go to “http://bezier.de/processing/libs/sql/” and get “BezierSQLib version 0.2.0″ library
2. Move the library  into ~/document/processing/libraries
3. Rename it to “BezierSQLib”
4. Open "ChromeHitoryReader" in Processing or just paste following sample code on editor in Processing (this is exactly same code as ChromeHistoryReader.pde)

/***************** START sample code ****************/

import de.bezier.data.sql.*;
SQLite db;
void setup()
{
    size( 100, 100 );
    db = new SQLite( this, “/Users/YOUR_ACCOUNT_NAME/Library/Application Support/Google/Chrome/Profile 1/History” );  // open database file
    if ( db.connect() )
    {
       db.query( “select datetime(last_visit_time/1000000-11644473600,’unixepoch’),url from  urls order by last_visit_time desc”);
       while(db.next()){
         println(db.getString(“datetime(last_visit_time/1000000-11644473600,’unixepoch’)”));
         println(db.getString(“url”));
       }
    }
}

/***************** END sample code ****************/

5. db = new SQLite( this, “/Users/YOUR_ACCOUNT_NAME/Library/Application Support/Google/Chrome/Profile 1/History” );  replace “YOUR_ACCOUNT_NAME” to your user name(account name)

Please make sure Chrome Browser is not running.

Finally, when you run it, you can see all history with access date in the console of Processing.


ENJOY!
