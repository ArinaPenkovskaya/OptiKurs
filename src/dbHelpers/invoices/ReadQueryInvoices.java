package dbHelpers.invoices;

import model.Invoices;
import model.OD;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.text.ParseException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ReadQueryInvoices {

    private Connection conn;
    private ResultSet results;
    private ResultSet results2;

    public ReadQueryInvoices() {

        try {
            Properties props = new Properties();
            InputStream instr = getClass().getResourceAsStream("dbConn.properties");
            props.load(instr);
            String driver = props.getProperty("driver.name");
            String url = props.getProperty("server.name");
            String username = props.getProperty("user.name");
            String password = props.getProperty("user.password");

            Class.forName("com.mysql.jdbc.Driver");

            conn = DriverManager.getConnection(url, username, password);
        } catch (IOException ex) {
            Logger.getLogger(ReadQueryInvoices.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ReadQueryInvoices.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
        }

    }

    public void doReadI() {

        try {
            String query = "Select * from invoices";
            PreparedStatement ps = conn.prepareStatement(query);
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadQueryInvoices.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void doAddI(OD od) {

        try {

            od.setSumma(od.getSumma(), od.getCurName());
            String q1 = "SELECT  dogID from opendep order by dogID DESC limit 1";
            PreparedStatement ps = conn.prepareStatement(q1);
            this.results = ps.executeQuery();
            this.results.next();
            od.setDogId(this.results.getInt("dogID"));

            q1 = "SELECT  debit from invoices where kod ='1010'";
            ps = conn.prepareStatement(q1);
            this.results = ps.executeQuery();
            this.results.next();
            float debit;
            debit = this.results.getFloat("debit");


            q1 = "Update invoices SET debit = ? WHERE kod='1010'";
            ps = conn.prepareStatement(q1);
            ps.setFloat(1, debit + od.getSumma());
            ps.executeUpdate();

            String query = "INSERT INTO invoices (name, number, type, kod, debit, saldo, clientID, dogID) values (?, ?, ?, ?, ?, ?, ?, ?)";

            ps = conn.prepareStatement(query);

            ps.setString(1, "Тек. счет клиента");
            // ps.setFloat(2, od.getSumma());
            ps.setString(3, "П");
            ps.setString(4, "3014");
            ps.setFloat(5, od.getSumma());
            ps.setFloat(6, 0);
            ps.setInt(7, od.getClientId());
            ps.setFloat(8, od.getDogId());

            String num = "3014";
            String addNUL = Integer.toString(od.getClientId());
            while (addNUL.length() < 4) {
                addNUL = "0" + addNUL;
            }
            num += addNUL;

            addNUL = Integer.toString(od.getDogId());
            while (addNUL.length() < 4) {
                addNUL = "0" + addNUL;
            }
            num += addNUL;
            num += "1";

            ps.setString(2, num);
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(ReadQueryInvoices.class.getName()).log(Level.SEVERE, null, ex);
        }

    }


    public void doCloseI(int dogID) {

        try {
            String q1 = "Select * from opendep WHERE dogID = ?";
            PreparedStatement ps = conn.prepareStatement(q1);
            ps.setInt(1, dogID);
            this.results = ps.executeQuery();
            this.results.next();
            OD od = new OD();
            float debit = 0;
            od.setDogId(dogID);
            System.out.println(dogID);
            System.out.println(od.getDogId());

            od.setSumma(this.results.getFloat("summa"));
            od.setCurName(this.results.getString("summa"));
            od.setSumma(od.getSumma(), od.getCurName());
            od.setAccumulation(this.results.getFloat("accumulation"));
            od.setAccumulation(od.getAccumulation(), od.getCurName());
            od.setClientId(this.results.getInt("clientID"));

            q1 = "SELECT debit from invoices where kod ='7327'";
            ps = conn.prepareStatement(q1);
            this.results = ps.executeQuery();
            this.results.next();
            debit = this.results.getFloat("debit");

            q1 = "Update invoices SET debit = ? WHERE kod='7327'";
            ps = conn.prepareStatement(q1);
            ps.setFloat(1, debit + od.getAccumulation());
            ps.executeUpdate();

            String query = "INSERT INTO invoices (name, number, type, kod, debit, saldo, clientID, dogID) values (?, ?, ?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(query);
            ps.setString(1, "Процентный счет");
            ps.setString(3, "П");
            ps.setString(4, "1273");
            ps.setFloat(5, od.getAccumulation());
            ps.setFloat(6, 0);
            ps.setInt(7, od.getClientId());
            ps.setFloat(8, od.getDogId());
            String num = "1273";
            String num2 = "3014";
            String addNUL = Integer.toString(od.getClientId());
            while (addNUL.length() < 4) {
                addNUL = "0" + addNUL;
            }
            num += addNUL;
            num2 += addNUL;
            addNUL = Integer.toString(od.getDogId());
            while (addNUL.length() < 4) {
                addNUL = "0" + addNUL;
            }
            num += addNUL;
            num2 += addNUL;
            num += "2";
            num2 += "1";
            ps.setString(2, num);
            ps.executeUpdate();

            q1 = "SELECT  debit from invoices where kod ='1010'";
            ps = conn.prepareStatement(q1);
            this.results = ps.executeQuery();
            this.results.next();
            debit = this.results.getFloat("debit");

            q1 = "Update invoices SET debit = ? WHERE kod='1010'";
            ps = conn.prepareStatement(q1);
            ps.setFloat(1, debit + od.getAccumulation());
            ps.executeUpdate();

            q1 = "SELECT debit from invoices where kod ='7327'";
            ps = conn.prepareStatement(q1);
            this.results = ps.executeQuery();
            this.results.next();
            debit = this.results.getFloat("debit");

            q1 = "Update invoices SET debit = ? WHERE kod='7327'";
            ps = conn.prepareStatement(q1);
            ps.setFloat(1, debit + od.getSumma());
            ps.executeUpdate();

            q1 = "SELECT  debit from invoices where number = ?";
            ps = conn.prepareStatement(q1);
            ps.setString(1, num2);
            System.out.println(num2);
            this.results = ps.executeQuery();
            this.results.next();
            debit = this.results.getFloat("debit");
            System.out.println(debit);

            q1 = "Update invoices SET debit = ? WHERE number= ?";
            ps = conn.prepareStatement(q1);
            ps.setFloat(1, debit + od.getSumma());
            ps.setString(2, num2);
            ps.executeUpdate();

            q1 = "SELECT  debit from invoices where kod ='1010'";
            ps = conn.prepareStatement(q1);
            this.results = ps.executeQuery();
            this.results.next();
            debit = this.results.getFloat("debit");

            q1 = "Update invoices SET debit = ? WHERE kod='1010'";
            ps = conn.prepareStatement(q1);
            ps.setFloat(1, debit + od.getSumma());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(ReadQueryInvoices.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public String getHTMLtableI() throws ParseException {

        String table = "";
        try {

            while (this.results.next()) {

                Invoices iv = new Invoices();

                iv.setIvID(this.results.getInt("ivID"));
                iv.setName(this.results.getString("name"));
                iv.setNumber(this.results.getString("number"));
                iv.setType(this.results.getString("type"));
                iv.setKod(this.results.getString("kod"));
                iv.setDebit(this.results.getInt("debit"));
                iv.setClientID(this.results.getInt("clientID"));
                iv.setDogID(this.results.getInt("dogID"));

                table += "<tr>";

                table += "<td>";
                String addNUL = Integer.toString(iv.getIvID());
                while (addNUL.length() < 3) {
                    addNUL = "0" + addNUL;
                }
                table += addNUL;
                table += "</td>";

                table += "<td>";
                table += iv.getName();
                table += "</td>";

                table += "<td>";
                table += iv.getNumber();
                table += "</td>";

                table += "<td>";
                table += iv.getType();
                table += "</td>";

                table += "<td>";
                table += iv.getKod();
                table += "</td>";

                table += "<td>";
                table += iv.getDebit();
                table += "</td>";

                table += "<td>";
                table += iv.getDebit();
                table += "</td>";

                table += "<td>";
                table += iv.getClientID();
                table += "</td>";

                table += "<td>";
                table += iv.getDogID();
                table += "</td>";

                table += "</tr>";

            }

        } catch (SQLException ex) {
            Logger.getLogger(ReadQueryInvoices.class.getName()).log(Level.SEVERE, null, ex);
        }
        table += "</table>";
        return table;
    }

}
