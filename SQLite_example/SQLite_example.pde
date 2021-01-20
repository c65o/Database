import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;
import de.bezier.data.sql.*;
import g4p_controls.*;

SQLite db;
GTextField txf;
GPassword pwd;
GTabManager tt;
GLabel lblPwd;


void setup() {
  size(220, 300);
  background(100, 133, 161);

  db = new SQLite(this, "test.db"); 

  if (db.connect()) {

    db.query("SELECT * FROM Users");

    while (db.next()) {

      String name =db.getString("Usernames");
      String pwd = db.getString("Passwords"); 

      println("Username: "+ name + "       " + "Password: " + pwd);
    }
  }


  txf = new GTextField(this, 10, 40, 200, 20);
  txf.tag = "txf1";
  txf.setPromptText("Text field 1");
  txf.setFocus(true);
  tt = new GTabManager();



  pwd = new GPassword(this, 10, 100, 200, 20);
  pwd.tag = "pwd1";  
}

void draw() {
}
