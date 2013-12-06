package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import controller.MahasiswaCrud;
import pojos.Mahasiswa;
import java.util.List;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(6);
    _jspx_dependants.add("/modul.jsp");
    _jspx_dependants.add("/mahasiswa.jsp");
    _jspx_dependants.add("/dosen.jsp");
    _jspx_dependants.add("/matakuliah.jsp");
    _jspx_dependants.add("/home.jsp");
    _jspx_dependants.add("/list_mahasiswa.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Home Page</title>\n");
      out.write("        <link rel='stylesheet' type='text/css' href='css/style.css' />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"badan_utama\">\n");
      out.write("            <div id=\"header\"><h1>Sistem Informasi Akademik</h1></div>\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("                <div id=\"sidebar\">\n");
      out.write("                    <div id=\"cssmenu\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"?page=home\"><span>Home</span></a></li>\n");
      out.write("                            <li><a href=\"?page=mahasiswa\"><span>Mahasiswa</span></a></li>\n");
      out.write("                            <li><a href=\"?page=dosen\"><span>Dosen</span></a></li>\n");
      out.write("                            <li><a href=\"?page=matakuliah\"><span>Matakuliah</span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\t\n");
      out.write("                </div>\n");
      out.write("                <div id=\"content\">\n");
      out.write("                    ");
      out.write('\n');

    String halaman = request.getParameter("page");
    if(halaman != null){
        if(halaman.equals("mahasiswa")){
        
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<h3>Form Input Data Mahasiswa</h3>\n");
      out.write("<form action='mahasiswaAksi.jsp' method='POST'>\n");
      out.write("    <table cellpadding='2' cellpadding='2'>\n");
      out.write("    <tr>\n");
      out.write("        <td width='160'><label>NIM</label></td>\n");
      out.write("        <td>:</td>\n");
      out.write("        <td><input type='text' name='nim' placeholder='Nim' /></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td><label>Nama</label></td>\n");
      out.write("        <td>:</td>\n");
      out.write("        <td><input type='text' name='nama' placeholder='Nama' /></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td><label>Alamat</label></td>\n");
      out.write("        <td>:</td>\n");
      out.write("        <td><input type='text' name='alamat' placeholder='Alamat'/></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td><label>Jenis Kelamin</label></td>\n");
      out.write("        <td>:</td>\n");
      out.write("        <td><input type='radio' name='jeniskelamin' value='L'/><label>Laki-Laki</label>\n");
      out.write("        <input type='radio' name='jeniskelamin' value='P'/><label>Perempuan</label></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td><label>Jurusan</label></td>\n");
      out.write("        <td>:</td>\n");
      out.write("        <td><select name='jurusan'>\n");
      out.write("        <option>Pilih Jurusan</option>\n");
      out.write("        <option value='Matematika'>Matematika</option>\n");
      out.write("        <option\n");
      out.write("            value='Fisika'>Fisika</option>\n");
      out.write("        <option value='Biologi'>Biologi</option>\n");
      out.write("        <option value='Kimia'>Kimia</option>\n");
      out.write("        <option value='Teknik Informatika'>Teknik Informatika</option>\n");
      out.write("        <option value='Teknik Arsitektur'>Teknik Arsitektur</option>\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td><label>Telp</label></td>\n");
      out.write("        <td>:</td>\n");
      out.write("        <td><input type='text' name='telp' placeholder='Telp'/></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Simpan'/>\n");
      out.write("        <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>\n");
      out.write("    </tr>\n");
      out.write("    </table>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("        ");

        }else if(halaman.equals("dosen")){
        
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<h3>Form Input Data Dosen</h3>\n");
      out.write("<form action='./Dosen' method='POST'>\n");
      out.write("    <table cellpadding='2' cellpadding='2'>\n");
      out.write("        <tr>\n");
      out.write("            <td width='160'><label>NIP</label></td>\n");
      out.write("            <td>:</td>\n");
      out.write("            <td><input type='text' name='nip' placeholder='Nip'/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td><label>Nama Dosen</label></td>\n");
      out.write("            <td>:</td>\n");
      out.write("            <td><input type='text' name='nama' placeholder='Nama Dosen'/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td><label>Alamat</label></td>\n");
      out.write("            <td>:</td>\n");
      out.write("            <td><input type='text' name='alamat' placeholder='Alamat'/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td><label>Telp</label></td>\n");
      out.write("            <td>:</td>\n");
      out.write("            <td><input type='text' name='telp' placeholder='Telp'/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Simpan'/>\n");
      out.write("            <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>\n");
      out.write("        </tr>\n");
      out.write("    </table>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("        ");

        }else if(halaman.equals("matakuliah")){
        
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<h3>Form Input Data Matakuliah</h3>\n");
      out.write("<form action='./Matakuliah' method='POST'>\n");
      out.write("<table cellpadding='2' cellpadding='2'>\n");
      out.write("    <tr>\n");
      out.write("        <td width='160'><label>Kode Matakuliah</label></td>\n");
      out.write("        <td>:</td>\n");
      out.write("        <td><input type='text' name='kode' placeholder='Kode Matakuliah'/></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td><label>Nama Matakuliah</label></td>\n");
      out.write("        <td>:</td>\n");
      out.write("        <td><input type='text' name='matakuliah' placeholder='Nama Matakuliah'/></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td><label>SKS</label></td>\n");
      out.write("        <td>:</td>\n");
      out.write("        <td><select name='sks'>\n");
      out.write("        ");

        for (int i = 1; i <= 6; i++) {
        
      out.write("\n");
      out.write("            <option value='");
      out.print(i);
      out.write('\'');
      out.write('>');
      out.print(i);
      out.write("\n");
      out.write("        ");

        }
        
      out.write("\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td><label>Semester</label></td>\n");
      out.write("        <td>:</td>\n");
      out.write("        <td><select name='semester'>\n");
      out.write("        ");

        for (int i = 1; i <= 8; i++) {
        
      out.write("\n");
      out.write("            <option value='");
      out.print(i);
      out.write('\'');
      out.write('>');
      out.print(i);
      out.write("\n");
      out.write("        ");

        }
        
      out.write("\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Simpan'/>\n");
      out.write("            <input type='reset' name='reset' class='btn btn-primary' value='Reset'/></td>\n");
      out.write("    </tr>\n");
      out.write("    </table>\n");
      out.write("</form>\n");
      out.write("                ");
      out.write("\n");
      out.write("        ");

        }else if(halaman.equals("home")){
        
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("<h1>Selamat Datang Di Web Siakad</h1>\n");
      out.write("   \n");
      out.write("\n");
      out.write("        ");

        }else if(halaman.equals("list_mhs")){
        
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<link rel='stylesheet' type='text/css' href='css/style.css' />\n");
      out.write("<link rel='stylesheet' type='text/css' href='css/tablestyle.css' />\n");
      out.write("<table width='770' border='0' align='center'>\n");
      out.write("    <tr>\n");
      out.write("        <td colspan='7'><h3><strong><center>Data Mahasiswa</center></h3></strong></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr class='head'>\n");
      out.write("        <th width='200'>NIM</th>\n");
      out.write("        <th width='350'>Nama Mahasiswa</th>\n");
      out.write("        <th width='300'>Alamat</th>\n");
      out.write("        <th width='230'>Jenis Kelamin</th>\n");
      out.write("        <th width='300'>Jurusan</th>\n");
      out.write("        <th width='240'>Telp</th>\n");
      out.write("        <th width='260'>Aksi</th>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    ");

    MahasiswaCrud mc = new MahasiswaCrud();
    List<Mahasiswa> mahasiswaList = mc.getAll();
    
    for (int i = 0; i < mahasiswaList.size(); i++) {
    
      out.write("\n");
      out.write("    <tr class='satu'>\n");
      out.write("        <td>");
      out.print(mahasiswaList.get(i).getNim());
      out.write("</td>\n");
      out.write("        <td>");
      out.print(mahasiswaList.get(i).getMhsNama());
      out.write("</td>\n");
      out.write("        <td>");
      out.print(mahasiswaList.get(i).getMhsAlamat());
      out.write("</td>\n");
      out.write("        <td>");
      out.print(mahasiswaList.get(i).getMhsJenisKelamin());
      out.write("</td>\n");
      out.write("        <td>");
      out.print(mahasiswaList.get(i).getMhsJurusan());
      out.write("</td>\n");
      out.write("        <td>");
      out.print(mahasiswaList.get(i).getMhsTelp());
      out.write("</td>\n");
      out.write("        <td><a href=\"mahasiswaAksi.jsp?nim=");
      out.print(mahasiswaList.get(i).getNim());
      out.write("&status=hapus\"><img width='12px' src='css/images/delete.png'/>Hapus</a>\n");
      out.write("            <a href=\"updateMahasiswa.jsp?nim=");
      out.print(mahasiswaList.get(i).getNim());
      out.write("\"><img width='12px' src='css/images/edit.png'/>Edit</a></td>\n");
      out.write("    </tr>\n");
      out.write("    ");

    }
    
      out.write("\n");
      out.write("</table>\n");
      out.write("<a href=mahasiswa.jsp><h3><center>Tambah Data</center></h3></a>\n");
      out.write("\n");
      out.write("        ");

        }
        
    }else{
    
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("<h1>Selamat Datang Di Web Siakad</h1>\n");
      out.write("   \n");
      out.write("\n");
      out.write("    ");

    }

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"footer\">&copy; Wim Sonevel</div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
