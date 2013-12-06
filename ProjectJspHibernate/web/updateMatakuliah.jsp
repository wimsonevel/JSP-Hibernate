<%-- 
    Document   : updateMatakuliah
    Created on : 17 Nov 13, 9:51:29
    Author     : Wim Sonevel
--%>

<%@page import="pojos.Matakuliah"%>
<%@page import="controller.MatakuliahCrud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String kode = request.getParameter("kode");
MatakuliahCrud mtc = new MatakuliahCrud();
Matakuliah mat = mtc.findByKode(kode);
%>
<h3>Form Input Data Matakuliah</h3>
<form action='matakuliahAksi.jsp' method='POST'>
<table cellpadding='2' cellpadding='2'>
    <tr>
        <td width='160'><label>Kode Matakuliah</label></td>
        <td>:</td>
        <td><input type='text' name='kode' placeholder='Kode Matakuliah' value="<%=mat.getMatKode()%>" readonly="true"/></td>
    </tr>
    <tr>
        <td><label>Nama Matakuliah</label></td>
        <td>:</td>
        <td><input type='text' name='matakuliah' placeholder='Nama Matakuliah' value="<%=mat.getMatNama()%>"/></td>
    </tr>
    <tr>
        <td><label>SKS</label></td>
        <td>:</td>
        <td><select name='sks'>
        <%
        for (int i = 1; i <= 6; i++) {
            String pilih="";
            if(mat.getMatSks().equals(String.valueOf(i))){
                    pilih="selected";
            }
        %>
        <option value='<%=i%>' <%=pilih%>><%=i%>
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
            String pilih="";
            if(mat.getMatSemester().equals(String.valueOf(i))){
                pilih="selected";
            }
        %>
        <option value='<%=i%>' <%=pilih%>><%=i%>
        <%
        }
        %>
        </td>
    </tr>
    <tr>
        <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Update'/>
            <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
    </tr>
    </table>
</form>

