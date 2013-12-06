<%-- 
    Document   : list_matakuliah
    Created on : 14 Nov 13, 21:06:42
    Author     : Wim Sonevel
--%>

<%@page import="pojos.Matakuliah"%>
<%@page import="java.util.List"%>
<%@page import="controller.MatakuliahCrud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel='stylesheet' type='text/css' href='css/tablestyle.css' />
<table width='670' border='0' align='center'>
    <tr>
        <td colspan='7'><h3><strong><center>Data Matakuliah</center></h3></strong></td>
    </tr>
    <tr class='head'>
        <th width='200'>Kode</th>
        <th width='350'>Nama Matakuliah</th>
        <th width='300'>SKS</th>
        <th width='240'>Semester</th>
        <th width='260'>Aksi</th>
    </tr>
    <%
    MatakuliahCrud mtc = new MatakuliahCrud();
    List<Matakuliah> matakuliahList = mtc.getAll();
    
    for (int i = 0; i < matakuliahList.size(); i++) {
    %>
    <tr class='satu'>
        <td><%=matakuliahList.get(i).getMatKode()%></td>
        <td><%=matakuliahList.get(i).getMatNama()%></td>
        <td><%=matakuliahList.get(i).getMatSks()%></td>
        <td><%=matakuliahList.get(i).getMatSemester()%></td>
        <td><a href="matakuliahAksi.jsp?kode=<%=matakuliahList.get(i).getMatKode()%>&status=hapus"><img width='12px' src='css/images/delete.png'/>Hapus</a>
            <a href="?page=update_mat&kode=<%=matakuliahList.get(i).getMatKode()%>"><img width='12px' src='css/images/edit.png'/>Edit</a></td>
    </tr>
    <%
    }
    %>
</table>
<a href=?page=matakuliah><h3><center>Tambah Data</center></h3></a>