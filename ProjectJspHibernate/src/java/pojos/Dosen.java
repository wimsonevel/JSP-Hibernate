package pojos;
// Generated 14 Nov 13 12:02:58 by Hibernate Tools 3.2.1.GA



/**
 * Dosen generated by hbm2java
 */
public class Dosen  implements java.io.Serializable {


     private int nip;
     private String dosNama;
     private String dosAlamat;
     private String dosTelp;

    public Dosen() {
    }

	
    public Dosen(int nip) {
        this.nip = nip;
    }
    public Dosen(int nip, String dosNama, String dosAlamat, String dosTelp) {
       this.nip = nip;
       this.dosNama = dosNama;
       this.dosAlamat = dosAlamat;
       this.dosTelp = dosTelp;
    }
   
    public int getNip() {
        return this.nip;
    }
    
    public void setNip(int nip) {
        this.nip = nip;
    }
    public String getDosNama() {
        return this.dosNama;
    }
    
    public void setDosNama(String dosNama) {
        this.dosNama = dosNama;
    }
    public String getDosAlamat() {
        return this.dosAlamat;
    }
    
    public void setDosAlamat(String dosAlamat) {
        this.dosAlamat = dosAlamat;
    }
    public String getDosTelp() {
        return this.dosTelp;
    }
    
    public void setDosTelp(String dosTelp) {
        this.dosTelp = dosTelp;
    }




}


