<%-- 
    Document   : modul
    Created on : 14 Nov 13, 12:15:44
    Author     : Wim Sonevel
--%>
<%
    String halaman = request.getParameter("page");
    if(halaman != null){
        if(halaman.equals("mahasiswa")){
        %>
            <%@include  file="mahasiswa.jsp"%>
        <%
        }else if(halaman.equals("dosen")){
        %>
            <%@include  file="dosen.jsp"%>
        <%
        }else if(halaman.equals("matakuliah")){
        %>
            <%@include  file="matakuliah.jsp"%>
        <%
        }else if(halaman.equals("home")){
        %>
            <%@include  file="home.jsp"%>
        <%
        }else if(halaman.equals("list_mhs")){
        %>
            <%@include  file="list_mahasiswa.jsp"%>
        <%
        }else if(halaman.equals("list_dos")){
        %>
            <%@include  file="list_dosen.jsp"%>
        <%
        }else if(halaman.equals("list_mat")){
        %>
            <%@include  file="list_matakuliah.jsp"%>
        <%
        }else if(halaman.equals("update_mhs")){
        %>
            <%@include  file="updateMahasiswa.jsp"%>
        <%
        }else if(halaman.equals("update_dos")){
        %>
            <%@include  file="updateDosen.jsp"%>
        <% 
        }else if(halaman.equals("update_mat")){
        %>
            <%@include  file="updateMatakuliah.jsp"%>
        <% 
        }
    }else{
    %>
        <%@include  file="home.jsp"%>
    <%
    }
%>