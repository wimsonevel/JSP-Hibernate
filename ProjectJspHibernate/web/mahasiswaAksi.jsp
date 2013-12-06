<%-- 
    Document   : mahasiswaCrud
    Created on : 16 Nov 13, 18:54:20
    Author     : Wim Sonevel
--%>

<%@page import="org.hibernate.HibernateException"%>
<%@page import="controller.MahasiswaCrud"%>
<%@page import="pojos.Mahasiswa"%>
<%
    int nim = Integer.parseInt(request.getParameter("nim"));
    String nama = request.getParameter("nama");
    String alamat = request.getParameter("alamat");
    String jenisKelamin = request.getParameter("jeniskelamin");
    String jurusan = request.getParameter("jurusan");
    String telp = request.getParameter("telp");
    String submit = request.getParameter("submit");
    String status = request.getParameter("status");
    
    Mahasiswa mhs = new Mahasiswa();
    MahasiswaCrud mc = new MahasiswaCrud();
    
    if(status == null){
        if(submit.equals("Simpan")){
            mhs.setNim(nim);
            mhs.setMhsNama(nama);
            mhs.setMhsAlamat(alamat);
            mhs.setMhsJenisKelamin(jenisKelamin);
            mhs.setMhsJurusan(jurusan);
            mhs.setMhsTelp(telp);
            mc.Create(mhs);
        }else if(submit.equals("Update")){
            mhs.setMhsNama(nama);
            mhs.setMhsAlamat(alamat);
            mhs.setMhsJenisKelamin(jenisKelamin);
            mhs.setMhsJurusan(jurusan);
            mhs.setMhsTelp(telp);
            mc.Update(mhs, nim);
        }
    }
    if(status != null){
        if(status.equals("hapus")){
            mc.delete(nim);
        }
    } 
    
    response.sendRedirect("?page=list_mhs");
    
%>
