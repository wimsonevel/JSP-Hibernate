<%-- 
    Document   : updateDosen
    Created on : 17 Nov 13, 9:19:01
    Author     : Wim Sonevel
--%>

<%@page import="pojos.Dosen"%>
<%@page import="controller.DosenCrud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int nip = Integer.parseInt(request.getParameter("nip"));
DosenCrud dc = new DosenCrud();
Dosen dos = dc.findByNip(nip);
%>
<h3>Form Input Data Dosen</h3>
<form action='dosenAksi.jsp' method='POST'>
    <table cellpadding='2' cellpadding='2'>
        <tr>
            <td width='160'><label>NIP</label></td>
            <td>:</td>
            <td><input type='text' name='nip' placeholder='Nip' value="<%=dos.getNip()%>" readonly="true"/></td>
        </tr>
        <tr>
            <td><label>Nama Dosen</label></td>
            <td>:</td>
            <td><input type='text' name='nama' placeholder='Nama Dosen' value="<%=dos.getDosNama()%>"/></td>
        </tr>
        <tr>
            <td><label>Alamat</label></td>
            <td>:</td>
            <td><input type='text' name='alamat' placeholder='Alamat' value="<%=dos.getDosAlamat()%>"/></td>
        </tr>
        <tr>
            <td><label>Telp</label></td>
            <td>:</td>
            <td><input type='text' name='telp' placeholder='Telp' value="<%=dos.getDosTelp()%>"/></td>
        </tr>
        <tr>
            <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Update'/>
            <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
        </tr>
    </table>
</form>
