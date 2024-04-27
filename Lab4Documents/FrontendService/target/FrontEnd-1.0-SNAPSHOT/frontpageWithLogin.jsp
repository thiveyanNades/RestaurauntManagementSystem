<%-- 
    Document   : frontpageWithLogin
    Created on : Mar 15, 2021, 2:00:13 AM
    Author     : student
--%>

<%@page import="java.util.Arrays"%>
<%@page import="ryerson.ca.helper.ReservationSlot"%>
<%@page import="ryerson.ca.helper.ReservationXML"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            * {box-sizing: border-box;}

            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }

            .topnav {
                overflow: hidden;
                background-color: #e9e9e9;
            }

            .topnav a {
                float: left;
                display: block;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .topnav a:hover {
                background-color: #ddd;
                color: black;
            }

            .topnav a.active {
                background-color: #2196F3;
                color: white;
            }

            .topnav .login-container {
                float: right;
            }

            .topnav input[type=text] {
                padding: 6px;
                margin-top: 8px;
                font-size: 17px;
                border: none;
                width:120px;
            }

            .topnav .login-container button {
                float: right;
                padding: 6px 10px;
                margin-top: 8px;
                margin-right: 16px;
                background-color: #555;
                color: white;
                font-size: 17px;
                border: none;
                cursor: pointer;
            }

            .topnav .login-container button:hover {
                background-color: green;
            }

            @media screen and (max-width: 600px) {
                .topnav .login-container {
                    float: none;
                }
                .topnav a, .topnav input[type=text], .topnav .login-container button {
                    float: none;
                    display: block;
                    text-align: left;
                    width: 100%;
                    margin: 0;
                    padding: 14px;
                }
                .topnav input[type=text] {
                    border: 1px solid #ccc;  
                }
            }
       
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 60%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 15px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

        </style>
    </head>
    <body>

        <div class="topnav">
            Hello <%=request.getAttribute("username")%>

        </div>

        <div style="padding-left:16px">
    <h2>Search Reservations</h2> 
    <form action="FrontEnd" method="post"> 
        <input type="hidden" name="pageName" value="search"/>
        Search by date:
        <input type="text" name="query" placeholder="YYYY/MM/DD">       
        <input type="submit" value="search">
    </form>
    </div>
        <div style="padding-left:16px">
            <h2>Add Reservations</h2> 
            <form action="FrontEnd" method="post"> 
        <label for="date">Date:</label>
        <input type="text" id="date" name="date" placeholder="YYYY/MM/DD" required><br><br>

        <label for="time">Time:</label>
        <input type="text" id="time" name="time" placeholder="HH:MM" required><br><br>

        <label for="tableOccupancy">Table Occupancy:</label>
        <input type="number" id="tableOccupancy" name="tableOccupancy" required><br><br>
                <input type="hidden" name="pageName" value="add"/>

        <button type="submit">Add Reservation</button>
    </form>
        

</body>
