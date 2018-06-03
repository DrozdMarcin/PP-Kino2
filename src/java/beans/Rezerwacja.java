package beans;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.*;
import database.Db_Connection;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Rezerwacja 
{
    private String imie,nazwisko,tytul,godzina,biletynorm,biletyulg,nazwauzytkownika ;   
    public Rezerwacja ()
    {
        imie="";
        nazwisko="";
        tytul="";
        godzina="";
        biletynorm="";
        biletyulg="";
        nazwauzytkownika="";   
    }        
 
      public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

      public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }

    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }

    public String getGodzina() {
        return godzina;
    }

    public void setGodzina(String godzina) {
        this.godzina = godzina;
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
    
     public String getNazwauzytkownika() {
        return nazwauzytkownika;
    }

    public void setNazwauzytkownika(String nazwauzytkownika) {
        this.nazwauzytkownika = nazwauzytkownika;
    }
    
       
    //----------------------------------//
    
        
    public void GetRezerwuj()
    {
            try 
            {      
                Db_Connection dbconn=new Db_Connection();
                Connection myconnection= dbconn.Connection();
                
                String AsqlString = "SELECT * FROM rezerwacja WHERE tytul = '"+tytul+"'";
                Statement myStatement = myconnection.createStatement();
                ResultSet rez=myStatement.executeQuery(AsqlString);

                while(rez.next())
                {
                    imie = rez.getString("imie");
                    nazwisko = rez.getString("nazwisko");
                    tytul= rez.getString("tytul");
                    godzina= rez.getString("godzina");
                    biletynorm = rez.getString("biletynorm");
                    biletyulg= rez.getString("biletyulg");
                    nazwauzytkownika=rez.getString("nazwauzytkownika");
                }
                
                myStatement.close();
                myconnection.close();
                
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);} 
            
    }
    
    //----------------------------------//
      
    public void Rezerwuj()
    {
        try
        {    
            Db_Connection dbconn=new Db_Connection();
            Connection myconnection= dbconn.Connection();

            String sqlString="INSERT INTO rezerwacja (imie,nazwisko,tytul,godzina,biletynorm,biletyulg,nazwauzytkownika) VALUES ('"+imie+"','"+nazwisko+"','"+tytul+"','"+godzina+"','"+biletynorm+"','"+biletyulg+"','"+nazwauzytkownika+"')";
            
            String updatebiletynorm="UPDATE repertuarr a JOIN rezerwacja b ON a.iduser = b.iduser SET a.biletyulg = a.biletyulg - b.biletyulg WHERE a.tytul = b.tytul && a.godzina = b.godzina";
            String updatebiletyulg="UPDATE repertuarr a JOIN rezerwacja b ON a.iduser = b.iduser SET a.biletynorm = a.biletynorm - b.biletynorm WHERE a.tytul = b.tytul && a.godzina = b.godzina";
          
            Statement myStatement = myconnection.createStatement();
            
            try
            {    
                myStatement.executeUpdate(sqlString);
                myStatement.executeUpdate(updatebiletynorm);
                myStatement.executeUpdate(updatebiletyulg);
                
                
                myStatement.close();
                myconnection.close();
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}
        } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}  
    }
}