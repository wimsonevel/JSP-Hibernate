/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojos.Dosen;

/**
 *
 * @author Wim Sonevel
 */
public class DosenCrud {
    Session session;
    
    public void create(Dosen dosen){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            session.save(dosen);
            transaksi.commit();
        }catch(Exception e){
            e.getMessage();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
    
    public List<Dosen> getAll(){
        session = util.HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Dosen> DosenList = null;
        try {
            Query query = session.createQuery("from Dosen");
            DosenList = query.list();

	}catch(Exception e){
            e.getMessage();
	}finally{
            if (session != null) {
                session.close();
            }
        }
	return DosenList;
    }
    
    public void delete(int nip){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            Dosen dos = (Dosen) session.load(Dosen.class, nip);
            if(dos != null){
                session.delete(dos);
                transaksi.commit();
            }
        }catch(Exception e){
            e.getMessage();
        } finally {
            if (session != null) {
		session.close();
            }
	}
    }
    
    public void update(Dosen dosen, int nip){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            Dosen dos = (Dosen) session.load(Dosen.class, nip);
            dos.setDosNama(dosen.getDosNama());
            dos.setDosAlamat(dosen.getDosAlamat());
            dos.setDosTelp(dosen.getDosTelp());
            transaksi.commit();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
    
    public Dosen findByNip(int nip) {
	Dosen dos = null;

	try {
            session = util.HibernateUtil.getSessionFactory().openSession();
            dos = (Dosen) session.get(Dosen.class, nip);
        } catch (Exception e) {
            e.getMessage();
	} finally {
            if (session != null) {
                session.close();
            }
	}
	return dos;
    }
}
