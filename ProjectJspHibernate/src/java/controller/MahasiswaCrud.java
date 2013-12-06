/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojos.Mahasiswa;

/**
 *
 * @author Wim Sonevel
 */
public class MahasiswaCrud {
    
    Session session; 
    
    public void Create(Mahasiswa mahasiswa){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            session.save(mahasiswa);
            transaksi.commit();
        }catch(Exception e){
            e.getMessage();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
    
    public List<Mahasiswa> getAll(){
        session = util.HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Mahasiswa> MahasiswaList = null;
        try {
            Query query = session.createQuery("from Mahasiswa");
            MahasiswaList = query.list();

	}catch(Exception e){
            e.getMessage();
	}finally{
            if (session != null) {
                    session.close();
            }
        }
	return MahasiswaList;
    }
    
    public void delete(int nim){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            Mahasiswa mhs = (Mahasiswa) session.load(Mahasiswa.class, nim);
            
            if(mhs != null){
                session.delete(mhs);
                transaksi.commit();
            }
        }catch(Exception e){
            e.getMessage();
        } 
        finally {
            if (session != null) {
		session.close();
            }
	}
    }
    
    public void Update(Mahasiswa mahasiswa, int nim){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            Mahasiswa mhs = (Mahasiswa) session.load(Mahasiswa.class, nim);
            mhs.setMhsNama(mahasiswa.getMhsNama());
            mhs.setMhsAlamat(mahasiswa.getMhsAlamat());
            mhs.setMhsJenisKelamin(mahasiswa.getMhsJenisKelamin());
            mhs.setMhsJurusan(mahasiswa.getMhsJurusan());
            mhs.setMhsTelp(mahasiswa.getMhsTelp());
            transaksi.commit();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }finally {
            if (session != null) {
                session.close();
            }
	}
    }
    
    public Mahasiswa findByNim(int nim) {
	Mahasiswa mhs = null;

	try {
            session = util.HibernateUtil.getSessionFactory().openSession();
            mhs = (Mahasiswa) session.get(Mahasiswa.class, nim);
        } catch (Exception e) {
            e.getMessage();
	} finally {
            if (session != null) {
                session.close();
            }
	}
	return mhs;
    }
}
