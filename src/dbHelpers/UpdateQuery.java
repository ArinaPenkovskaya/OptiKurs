package dbHelpers;

import model.Clients;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UpdateQuery {

    private Connection conn;

    public UpdateQuery() {

        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String password = props.getProperty("user.password");

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void doUpdate(Clients client) {

        try {
       
            String query="UPDATE clients SET name = ?, surname = ?, fname = ?, birthdate = ?, spp = ?, npp = ?, whogive = ?, whengive = ?, "
                    + "cityborn = ?, city = ?, address = ?, mobilenum = ?, homenum = ?, email = ?, job = ?, post = ?, citydoc = ?, "
                    + "marriage = ?, nat = ?, invalid = ?, old = ?, money = ?, ipp = ? WHERE ClientID = ?";
                       
                       
            PreparedStatement ps = conn.prepareStatement(query);

            ps.setString(1, client.getName());
            ps.setString(2, client.getSurname());
            ps.setString(3, client.getFname());
            ps.setString(4, client.getBirthdate());
            ps.setString(5, client.getSpp());
            ps.setString(6, client.getNpp());
            ps.setString(7, client.getWhogive());
            ps.setString(8, client.getWhengive());
            ps.setString(9, client.getCityborn());
            ps.setString(10, client.getCity());
            ps.setString(11, client.getAddress());
            ps.setString(12, client.getMobilenum());
            ps.setString(13, client.getHomenum());
            ps.setString(14, client.getEmail());
            ps.setString(15, client.getJob());
            ps.setString(16, client.getPost());
            ps.setString(17, client.getCitydoc());
            ps.setString(18, client.getMarriage());
            ps.setString(19, client.getNat());
            ps.setString(20, client.getInvalid());
            ps.setString(21, client.getOld());
            ps.setInt(22, client.getMoney());
            ps.setString(23, client.getIpp());
            ps.setInt(24, client.getClientID());
            
            


            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void updateCreditsAccumulation() {
        try {
            String dogIDList = "SELECT dogID FROM optibank.givecr;";
            PreparedStatement ps = conn.prepareStatement(dogIDList);
            ResultSet resultSet = ps.executeQuery();
            ArrayList<Integer> dogIDArr = new ArrayList<>();
            while (resultSet.next()) {
                dogIDArr.add(resultSet.getInt("dogID"));
            }

            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            dogIDArr.stream()
                    .forEach(v -> {
                        try {
                            ResultSet rs;
                            String feDBReq = "SELECT dateOfStart FROM optibank.givecr WHERE dogID = " + v + ";";
                            PreparedStatement fePS = conn.prepareStatement(feDBReq);
                            rs = fePS.executeQuery();
                            rs.next();
                            String date = rs.getString("dateOfStart");
                            LocalDate dateOfStartDeposit = LocalDate.parse(date, formatter);

                            LocalDate today = LocalDate.now();

                            feDBReq = "SELECT summa FROM optibank.givecr WHERE dogID = " + v + ";";
                            fePS = conn.prepareStatement(feDBReq);
                            rs = fePS.executeQuery();
                            rs.next();
                            float summa = rs.getFloat("summa");

                            feDBReq = "SELECT percent FROM optibank.givecr where dogID = " + v + ";";
                            fePS = conn.prepareStatement(feDBReq);
                            rs = fePS.executeQuery();
                            rs.next();
                            float percent = rs.getFloat("percent")/100;

                            float accumulation = (float) ChronoUnit.DAYS.between(dateOfStartDeposit, today)/365 * percent * summa;

                            feDBReq = "UPDATE `optibank`.`givecr` SET `accumulation` = '"
                                    + accumulation
                                    + "' WHERE (`dogID` = '" + v + "')";

                            fePS = conn.prepareStatement(feDBReq);
                            fePS.executeUpdate();
                        } catch (SQLException sql) {
                            sql.printStackTrace();
                        }
                    });
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }


    public void updateDepositsAccumulation() {
        try {
            String dogIDList = "SELECT dogID FROM optibank.opendep;";
            PreparedStatement ps = conn.prepareStatement(dogIDList);
            ResultSet resultSet = ps.executeQuery();
            ArrayList<Integer> dogIDArr = new ArrayList<>();
            while (resultSet.next()) {
                dogIDArr.add(resultSet.getInt("dogID"));
            }

            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            dogIDArr.stream()
                    .forEach(v -> {
                        try {
                            ResultSet rs;
                            String feDBReq = "SELECT dateOfStart FROM optibank.opendep WHERE dogID = " + v + ";";
                            PreparedStatement fePS = conn.prepareStatement(feDBReq);
                            rs = fePS.executeQuery();
                            rs.next();
                            String date = rs.getString("dateOfStart");
                            LocalDate dateOfStartDeposit = LocalDate.parse(date, formatter);

                            LocalDate today = LocalDate.now();

                            feDBReq = "SELECT summa FROM optibank.opendep WHERE dogID = " + v + ";";
                            fePS = conn.prepareStatement(feDBReq);
                            rs = fePS.executeQuery();
                            rs.next();
                            float summa = rs.getFloat("summa");

                            feDBReq = "SELECT percent FROM optibank.opendep WHERE dogID = " + v + ";";
                            fePS = conn.prepareStatement(feDBReq);
                            rs = fePS.executeQuery();
                            rs.next();
                            float percent = rs.getFloat("percent")/100;

                            float accumulation = (float) ChronoUnit.DAYS.between(dateOfStartDeposit, today)/365 * percent * summa;

                            feDBReq =  "UPDATE `optibank`.`opendep` SET `accumulation` = '"
                                    + accumulation
                                    + "' WHERE (`dogID` = '" + v + "');";
                            fePS = conn.prepareStatement(feDBReq);
                            fePS.executeUpdate();
                        } catch (SQLException sql) {
                            sql.printStackTrace();
                        }
                    });
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

}
