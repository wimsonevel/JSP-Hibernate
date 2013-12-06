<%-- 
    Document   : dosenAksi
    Created on : 16 Nov 13, 19:54:44
    Author     : Wim Sonevel
--%>

<%@page import="controller.DosenCrud"%>
<%@page import="pojos.Dosen"%>
<%
    int nip = Integer.parseInt(request.getParameter("nip"));
    String nama = request.getParameter("nama");
    String alamat = request.getParameter("alamat");
    String telp = request.getParameter("telp");
    String submit = request.getParameter("submit");
    String status = request.getParameter("status");

    Dosen dos = new Dosen();
    DosenCrud dc = new DosenCrud();
    
    if(status == null){
        if(submit.equals("Simpan")){
            dos.setNip(nip);
            dos.setDosNama(nama);
            dos.setDosAlamat(alamat);
            dos.setDosTelp(telp);
            dc.create(dos);
        }
        if(submit.equals("Update")){
            dos.setDosNama(nama);
            dos.setDosAlamat(alamat);
            dos.setDosTelp(telp);
            dc.update(dos, nip);
        }
    }
    if(status != null){
        if(status.equals("hapus")){
            dc.delete(nip);
        }
    }
    
    response.sendRedirect("?page=list_dos");
%>
