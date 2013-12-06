<%-- 
    Document   : list_mahasiswa
    Created on : 14 Nov 13, 20:57:57
    Author     : Wim Sonevel
--%>

<%@page import="controller.MahasiswaCrud"%>
<%@page import="pojos.Mahasiswa"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel='stylesheet' type='text/css' href='css/tablestyle.css' />
<table width='780' border='0' align='center'>
    <tr>
        <td colspan='7'><h3><strong><center>Data Mahasiswa</center></h3></strong></td>
    </tr>
    <tr class='head'>
        <th width='200'>NIM</th>
        <th width='350'>Nama Mahasiswa</th>
        <th width='300'>Alamat</th>
        <th width='230'>Jenis Kelamin</th>
        <th width='300'>Jurusan</th>
        <th width='240'>Telp</th>
        <th width='260'>Aksi</th>
    </tr>

    <%
    MahasiswaCrud mc = new MahasiswaCrud();
    List<Mahasiswa> mahasiswaList = mc.getAll();
    
    for (int i = 0; i < mahasiswaList.size(); i++) {
    %>
    <tr class='satu'>
        <td><%=mahasiswaList.get(i).getNim()%></td>
        <td><%=mahasiswaList.get(i).getMhsNama()%></td>
        <td><%=mahasiswaList.get(i).getMhsAlamat()%></td>
        <td><%=mahasiswaList.get(i).getMhsJenisKelamin()%></td>
        <td><%=mahasiswaList.get(i).getMhsJurusan()%></td>
        <td><%=mahasiswaList.get(i).getMhsTelp()%></td>
        <td><a href="mahasiswaAksi.jsp?nim=<%=mahasiswaList.get(i).getNim()%>&status=hapus"><img width='12px' src='css/images/delete.png'/>Hapus</a>
            <a href="?page=update_mhs&nim=<%=mahasiswaList.get(i).getNim()%>"><img width='12px' src='css/images/edit.png'/>Edit</a></td>
    </tr>
    <%
    }
    %>
</table>
<a href=?page=mahasiswa><h3><center>Tambah Data</center></h3></a>
