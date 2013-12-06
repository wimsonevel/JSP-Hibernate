<%-- 
    Document   : matakuliah
    Created on : 14 Nov 13, 12:47:07
    Author     : Wim Sonevel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h3>Form Input Data Matakuliah</h3>
<form action='matakuliahAksi.jsp' method='POST'>
<table cellpadding='2' cellpadding='2'>
    <tr>
        <td width='160'><label>Kode Matakuliah</label></td>
        <td>:</td>
        <td><input type='text' name='kode' placeholder='Kode Matakuliah'/></td>
    </tr>
    <tr>
        <td><label>Nama Matakuliah</label></td>
        <td>:</td>
        <td><input type='text' name='matakuliah' placeholder='Nama Matakuliah'/></td>
    </tr>
    <tr>
        <td><label>SKS</label></td>
        <td>:</td>
        <td><select name='sks'>
        <%
        for (int i = 1; i <= 6; i++) {
        %>
            <option value='<%=i%>'><%=i%>
        <%
        }
        %>
        </td>
    </tr>
    <tr>
        <td><label>Semester</label></td>
        <td>:</td>
        <td><select name='semester'>
        <%
        for (int i = 1; i <= 8; i++) {
        %>
            <option value='<%=i%>'><%=i%>
        <%
        }
        %>
        </td>
    </tr>
    <tr>
        <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Simpan'/>
            <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
    </tr>
    </table>
</form>
                