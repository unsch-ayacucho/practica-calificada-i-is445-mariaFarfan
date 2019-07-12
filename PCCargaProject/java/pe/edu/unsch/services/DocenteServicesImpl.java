package pe.edu.unsch.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.edu.unsch.dao.DocenteDao;
import pe.edu.unsch.entities.Docente;

@Service
public class DocenteServicesImpl implements DocenteService {

	@Autowired
	private DocenteDao docenteDao;

	@Override
	public List<Docente> getDocentes() {
		// TODO Auto-generated method stub
		return docenteDao.getDocentes();

	}
}








