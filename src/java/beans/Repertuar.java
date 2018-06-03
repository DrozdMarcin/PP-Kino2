package beans;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.*;
import database.Db_Connection;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Repertuar 
{
    private String tytul,opis,godziny,biletynorm,biletyulg,img ;
    
        
    public Repertuar ()
    {
        
        tytul="";
        opis="";
        godziny="";
        biletynorm="";
        biletyulg="";
        img="";
        
    }        
 
    
    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }
    
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getGodziny() {
        return godziny;
    }

    public void setGodziny(String godziny) {
        this.godziny = godziny;
    }

    public String getBiletynorm() {
        return biletynorm;
    }

    public void setBiletynorm(String biletynorm) {
        this.biletynorm = biletynorm;
    }

    public String getBiletyulg() {
        return biletyulg;
    }

    public void setBiletyulg(String biletyulg) {
        this.biletyulg = biletyulg;
    }
    
  
    
    //----------------------------------//
      
    public void RegisterRepertuar()
    {
        try
        {    
            Db_Connection dbconn=new Db_Connection();
            Connection myconnection= dbconn.Connection();

            String sqlString="INSERT INTO repertuarr (tytul,opis,godziny,biletynorm,biletyulg,img) VALUES ('"+tytul+"','"+opis+"','"+godziny+"','"+biletynorm+"','"+biletyulg+"','"+img+"')";
            
            Statement myStatement = myconnection.createStatement();
            
            try
            {    
                myStatement.executeUpdate(sqlString);
                myStatement.close();
                myconnection.close();
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}
        } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}  
    }
    
    //----------------------------------//
    
        
    public void GetRepertuar()
    {
            try 
            {      
                Db_Connection dbconn=new Db_Connection();
                Connection myconnection= dbconn.Connection();
                
                String AsqlString = "SELECT * FROM repertuarr WHERE tytul = '"+tytul+"'";
                Statement myStatement = myconnection.createStatement();
                ResultSet tyt=myStatement.executeQuery(AsqlString);

                while(tyt.next())
                {
                    tytul= tyt.getString("tytul");
                    opis = tyt.getString("opis");
                    godziny= tyt.getString("godziny");
                    biletynorm = tyt.getString("biletynorm");
                    biletyulg= tyt.getString("biletyulg");
                    img= tyt.getString("img");
                }
                
                myStatement.close();
                myconnection.close();
                
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);} 
            
    }
    
    //----------------------------------//

}