/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Wim Sonevel
 */
public class MatakuliahCrud {
    
    Session session;
    
    public void create(pojos.Matakuliah matakuliah){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            session.save(matakuliah);
            transaksi.commit();
        }catch(Exception e){
            e.getMessage();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
    
    public List<pojos.Matakuliah> getAll(){
        session = util.HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<pojos.Matakuliah> MatakuliahList = null;
        try {
            Query query = session.createQuery("from Matakuliah");
            MatakuliahList = query.list();

	}catch(Exception e){
            e.getMessage();
	}finally{
            if (session != null) {
                session.close();
            }
        }
	return MatakuliahList;
    }
    
    public void delete(String matKode){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            pojos.Matakuliah mat = (pojos.Matakuliah) session.load(pojos.Matakuliah.class, matKode);
            if(mat != null){
                session.delete(mat);
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
    
    public void update(pojos.Matakuliah matakuliah, String kode){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            pojos.Matakuliah mat = (pojos.Matakuliah) session.load(pojos.Matakuliah.class, kode);
            mat.setMatNama(matakuliah.getMatNama());
            mat.setMatSks(matakuliah.getMatSks());
            mat.setMatSemester(matakuliah.getMatSemester());
            transaksi.commit();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
    
    public pojos.Matakuliah findByKode(String kode) {
	pojos.Matakuliah mat = null;

	try {
            session = util.HibernateUtil.getSessionFactory().openSession();
            mat = (pojos.Matakuliah) session.get(pojos.Matakuliah.class, kode);
        } catch (Exception e) {
            e.getMessage();
	} finally {
            if (session != null) {
                session.close();
            }
	}
	return mat;
    }
}
