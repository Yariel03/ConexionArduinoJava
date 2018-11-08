<%-- 
    Document   : control
    Created on : 07-nov-2018, 23:41:12
    Author     : WebMaster
--%>

<%@page import="com.panamahitek.PanamaHitek_Arduino"%>
<!DOCTYPE html>
<%

    PanamaHitek_Arduino Ard = new PanamaHitek_Arduino();
    Ard.arduinoTX("COM4", 9600);
    String estado = request.getParameter("op");
    if (estado.equals("1")) {
        Ard.sendData("1");
    } else {
        Ard.sendData("0");
    }

    Ard.killArduinoConnection();
    response.sendRedirect("index.jsp?op="+estado);

//      

%>