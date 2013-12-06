<%-- 
    Document   : dosen
    Created on : 14 Nov 13, 12:27:35
    Author     : Wim Sonevel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h3>Form Input Data Dosen</h3>
<form action='dosenAksi.jsp' method='POST'>
    <table cellpadding='2' cellpadding='2'>
        <tr>
            <td width='160'><label>NIP</label></td>
            <td>:</td>
            <td><input type='text' name='nip' placeholder='Nip'/></td>
        </tr>
        <tr>
            <td><label>Nama Dosen</label></td>
            <td>:</td>
            <td><input type='text' name='nama' placeholder='Nama Dosen'/></td>
        </tr>
        <tr>
            <td><label>Alamat</label></td>
            <td>:</td>
            <td><input type='text' name='alamat' placeholder='Alamat'/></td>
        </tr>
        <tr>
            <td><label>Telp</label></td>
            <td>:</td>
            <td><input type='text' name='telp' placeholder='Telp'/></td>
        </tr>
        <tr>
            <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Simpan'/>
            <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>
        </tr>
    </table>
</form>
