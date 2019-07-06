package pe.edu.unsch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import pe.edu.unsch.entities.Docente;

@Repository("DocenteDao")
public class DocenteDaoImpl implements DocenteDao {

	@PersistenceContext	
	private EntityManager entityManager;
	
	@Override
	public List<Docente> getDocentes() {
		String hql = "from Docente as docente";
		return (List<Docente>) entityManager.createQuery(hql, Docente.class).getResultList();
	}
	
}
















