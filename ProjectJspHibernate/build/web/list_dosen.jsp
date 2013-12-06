<%-- 
    Document   : list_dosen
    Created on : 14 Nov 13, 21:03:07
    Author     : Wim Sonevel
--%>

<%@page import="java.util.List"%>
<%@page import="controller.DosenCrud"%>
<%@page import="pojos.Dosen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel='stylesheet' type='text/css' href='css/tablestyle.css' />
<table width='670' border='0' align='center'>
    <tr>
        <td colspan='7'><h3><strong><center>Data Dosen</center></h3></strong></td>
    </tr>
    <tr class='head'>
        <th width='200'>NIP</th>
        <th width='350'>Nama Dosen</th>
        <th width='300'>Alamat</th>
        <th width='240'>Telp</th>
        <th width='260'>Aksi</th>
    </tr>
    
    <%
    DosenCrud dc = new DosenCrud();
    List<Dosen> dosenList = dc.getAll();
    
    for (int i = 0; i < dosenList.size(); i++) {
    %>
    <tr class='satu'>
        <td><%=dosenList.get(i).getNip()%></td>
        <td><%=dosenList.get(i).getDosNama()%></td>
        <td><%=dosenList.get(i).getDosAlamat()%></td>
        <td><%=dosenList.get(i).getDosTelp()%></td>
        <td><a href="dosenAksi.jsp?nip=<%=dosenList.get(i).getNip()%>&status=hapus"><img width='12px' src='css/images/delete.png'/>Hapus</a>
            <a href="?page=update_dos&nip=<%=dosenList.get(i).getNip()%>"><img width='12px' src='css/images/edit.png'/>Edit</a></td>
    </tr>
    <%
    }
    %>
</table>
<a href=?page=dosen><h3><center>Tambah Data</center></h3></a>
