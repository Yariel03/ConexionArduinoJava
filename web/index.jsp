<%-- 
    Document   : inicio
    Created on : 04-nov-2018, 23:55:07
    Author     : WebMaster
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <style>
            a{
                list-style: none;
                text-decoration: none;
            }
            button{
                width: 25%;
                padding: 5%;
                text-align: center;
                margin: 5%
            }
        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Conexión Online con Arduino</h1>
        <a href="control.jsp?op=1">
            <button>Encender</button>
        </a>
        <a href="control.jsp?op=0">
            <button>Apagar</button>

        </a>
        <div id="repuesta">
            <%
                if (request.getParameter("op") != null) {
                        String op = request.getParameter("op");
                        if (op.equals("0")) {
                            op = "Apagado";
                        } else {
                            op = "Encendido";
                        }
                        %>
                        
                        <h1><%=op%></h1>
                        <%   
                }



            %>
            
         
           
        </div>
    </body>
</html>


