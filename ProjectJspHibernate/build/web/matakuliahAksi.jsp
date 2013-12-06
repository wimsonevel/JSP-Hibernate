<%-- 
    Document   : matakuliahAksi
    Created on : 17 Nov 13, 9:29:29
    Author     : Wim Sonevel
--%>

<%@page import="controller.MatakuliahCrud"%>
<%@page import="pojos.Matakuliah"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String kode = request.getParameter("kode");
    String matakuliah = request.getParameter("matakuliah");
    String sks = request.getParameter("sks");
    String semester = request.getParameter("semester");
    String submit = request.getParameter("submit");
    String status = request.getParameter("status");
    
    Matakuliah mat = new Matakuliah();
    MatakuliahCrud mtc = new MatakuliahCrud();
    
    if(status == null){
        if(submit.equals("Simpan")){
            mat.setMatKode(kode);
            mat.setMatNama(matakuliah);
            mat.setMatSks(sks);
            mat.setMatSemester(semester);
            mtc.create(mat);
        }else if(submit.equals("Update")){
            mat.setMatNama(matakuliah);
            mat.setMatSks(sks);
            mat.setMatSemester(semester);
            mtc.update(mat, kode);
        }
    }else if(status != null){
        if(status.equals("hapus")){
            mtc.delete(kode);
        }
    }
    
    response.sendRedirect("?page=list_mat");
%>
