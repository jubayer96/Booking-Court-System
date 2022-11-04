/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.io.Serializable;
/**
 *
 * @author Lumen
 */
public class Booking implements Serializable{
    
    private int bookingID;
    private String username;
    private String bookingStat;
    private int courtID;
    private String courtType;
    private String courtName;
    private double price;
    private String payStatus;
     
    /**
     * @return the bookingID
     */
    public int getBookingID() {
        return bookingID;
    }

    /**
     * @param bookingID the bookingID to set
     */
    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the courtID
     */
    public int getCourtID() {
        return courtID;
    }

    /**
     * @param courtID the courtID to set
     */
    public void setCourtID(int courtID) {
        this.courtID = courtID;
    }

    /**
     * @return the courtType
     */
    public String getCourtType() {
        return courtType;
    }

    /**
     * @param courtType the courtType to set
     */
    public void setCourtType(String courtType) {
        this.courtType = courtType;
    }

    /**
     * @return the bookingStat
     */
    public String getBookingStat() {
        return bookingStat;
    }

    /**
     * @param bookingStat the bookingStat to set
     */
    public void setBookingStat(String bookingStat) {
        this.bookingStat = bookingStat;
    }

    /**
     * @return the courtName
     */
    public String getCourtName() {
        return courtName;
    }

    /**
     * @param courtName the courtName to set
     */
    public void setCourtName(String courtName) {
        this.courtName = courtName;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @return the courtId
     */
    
    public String getPayStatus(){
        return payStatus;
    }
    public void setPayStatus(String payStatus){
        this.payStatus = payStatus;
    }
}
