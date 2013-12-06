<%-- 
    Document   : updateMahasiswa
    Created on : 16 Nov 13, 19:39:08
    Author     : Wim Sonevel
--%>

<%@page import="pojos.Mahasiswa"%>
<%@page import="controller.MahasiswaCrud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int nim = Integer.parseInt(request.getParameter("nim"));
MahasiswaCrud mc = new MahasiswaCrud();
Mahasiswa mhs = mc.findByNim(nim);
%>
<h3>Form Input Data Mahasiswa</h3>
<form action='mahasiswaAksi.jsp' method='POST'>
    <table cellpadding='2' cellpadding='2'>
    <tr>
        <td width='160'><label>NIM</label></td>
        <td>:</td>
        <td><input type='text' name='nim' placeholder='Nim' value="<%=mhs.getNim()%>" readonly="true"/></td>
    </tr>
    <tr>
        <td><label>Nama</label></td>
        <td>:</td>
        <td><input type='text' name='nama' placeholder='Nama' value="<%=mhs.getMhsNama()%>"/></td>
    </tr>
    <tr>
        <td><label>Alamat</label></td>
        <td>:</td>
        <td><input type='text' name='alamat' placeholder='Alamat' value="<%=mhs.getMhsAlamat()%>"/></td>
    </tr>
    <tr>
        <td><label>Jenis Kelamin</label></td>
        <td>:</td>
        <td><input type='radio' name='jeniskelamin' value='L' <% if(mhs.getMhsJenisKelamin().equals("L")){%> checked="checked"<%}%>/><label>Laki-Laki</label>
        <input type='radio' name='jeniskelamin' value='P' <% if(mhs.getMhsJenisKelamin().equals("P")){%> checked="checked"<%}%>/><label>Perempuan</label></td>
    </tr>
    <tr>
        <td><label>Jurusan</label></td>
        <td>:</td>
        <td><select name='jurusan'>
        <option value='<%=mhs.getMhsJurusan()%>' selected><%=mhs.getMhsJurusan()%></option>
        <option>Pilih Jurusan</option>
        <option value='Matematika'>Matematika</option>
        <option value='Fisika'>Fisika</option>
        <option value='Biologi'>Biologi</option>
        <option value='Kimia'>Kimia</option>
        <option value='Teknik Informatika'>Teknik Informatika</option>
        <option value='Teknik Arsitektur'>Teknik Arsitektur</option>
        </td>
    </tr>
    <tr>
        <td><label>Telp</label></td>
        <td>:</td>
        <td><input type='text' name='telp' placeholder='Telp' value="<%=mhs.getMhsTelp()%>"/></td>
    </tr>
    <tr>
        <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Update'/>
        <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
    </tr>
    </table>
</form>

