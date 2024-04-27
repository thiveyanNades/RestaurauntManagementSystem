/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ryerson.ca.searchreservation.helper;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Objects;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "reservation")
@XmlAccessorType(XmlAccessType.FIELD)
public class ReservationSlot {

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    public Integer getCapacity(){
        return capacity;
    }
    public void setCapacity(int capacity){
        this.capacity = capacity;
    }
    
    public Integer getReservationID(){
        return id;
    }
    
    public void setReservationID(){
        this.id = id;
    }
    int capacity;
    String date;
    String time;
    int id;

    public ReservationSlot(String date, String time, int capacity) {
        this.date = date;
        this.time = time;
        this.capacity=capacity;
    }
    
    public ReservationSlot(String date, String time, int capacity, int id) {
        this.date = date;
        this.time = time;
        this.capacity=capacity;
        this.id = id;
    }
    
    public ReservationSlot(){
        
    }
}