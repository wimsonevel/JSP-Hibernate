<%-- 
    Document   : index
    Created on : 14 Nov 13, 12:01:00
    Author     : Wim Sonevel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel='stylesheet' type='text/css' href='css/style.css' />
    </head>
    <body>
        <div id="badan_utama">
            <div id="header"><h1>Sistem Informasi Akademik</h1></div>
            <div id="wrapper">
                <div id="sidebar">
                    <div id="cssmenu">
                        <ul>
                            <li><a href="?page=home"><span>Home</span></a></li>
                            <li><a href="?page=mahasiswa"><span>Mahasiswa</span></a></li>
                            <li><a href="?page=dosen"><span>Dosen</span></a></li>
                            <li><a href="?page=matakuliah"><span>Matakuliah</span></a></li>
                        </ul>
                    </div>	
                </div>
                <div id="content">
                    <%@include file="modul.jsp" %>
                </div>
            </div>
            <div id="footer">&copy; Wim Sonevel</div>
        </div>
    </body>
</html>
