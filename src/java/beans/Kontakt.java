package beans;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.*;
import database.Db_Connection;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Kontakt 
{
    private String imie,email,wiadomosc ;   
    public Kontakt ()
    {
        imie="";
        email="";
        wiadomosc="";   
    }
    
      public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

       public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

      public String getWiadomosc() {
        return wiadomosc;
    }

    public void setWiadomosc(String wiadomosc) {
        this.wiadomosc = wiadomosc;
    }
    public void GetWiadomosc()
    {
            try 
            {      
                Db_Connection dbconn=new Db_Connection();
                Connection myconnection= dbconn.Connection();
                String AsqlString = "SELECT * FROM kontakt WHERE email = '"+email+"'";
                Statement myStatement = myconnection.createStatement();
                ResultSet rez=myStatement.executeQuery(AsqlString);
                while(rez.next())
                {
                    imie = rez.getString("imie");
                    email = rez.getString("email");
                    wiadomosc = rez.getString("wiadomosc");
                   
                }   
                myStatement.close();
                myconnection.close();
                
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);} 
            
    }     
    public void Wiadomosc ()
    {
        try
        {    
            Db_Connection dbconn=new Db_Connection();
            Connection myconnection= dbconn.Connection();
            String a="INSERT INTO kontakt (imie,email,wiadomosc) VALUES ('"+imie+"','"+email+"','"+wiadomosc+"')";
            Statement myStatement = myconnection.createStatement();
            try
            {    
                myStatement.executeUpdate(a);
                myStatement.close();
                myconnection.close();
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}
        } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}  
    }
}