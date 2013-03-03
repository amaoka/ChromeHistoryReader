Chrome History Reader
===================

Reading Chrome browser history data into processing.

This code is based on "SQLite_example1" included in BezierSQLib library.

To use ChromeHistoryReader follows the instruction.

1. Go to “http://bezier.de/processing/libs/sql/” and get “BezierSQLib version 0.2.0″ library
2. Move the library  into ~/document/processing/libraries
3. Rename it to “BezierSQLib”
4. Open "ChromeHitoryReader" in Processing 
5. db = new SQLite( this, “/Users/YOUR_ACCOUNT_NAME/Library/Application Support/Google/Chrome/Profile 1/History” );  replace “YOUR_ACCOUNT_NAME” with your user name(account name).
And if it runs and you got error message, replace "Profile 1" with "default" or make sure your environment where Hisotry file is located. 

*Please make sure Chrome Browser is not running.

Finally, when you run it, you can see all history with access date in the console of Processing.


ENJOY!
