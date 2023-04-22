package uva.dao;

import java.util.List;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import uva.model.Usuario;

public class UsuarioDAO {
	private final EntityManagerFactory emf;

	public UsuarioDAO() {
		emf = Persistence.createEntityManagerFactory("loja2");
	}	

	private interface UpdateBD {
		void execute(EntityManager em);
	}

	private void executeBD(UpdateBD oper) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction etx = em.getTransaction();
		try {
			etx.begin();
			oper.execute(em);
			etx.commit();
		} catch (Exception e) {
			etx.rollback();
		}
		em.close();
	}

	public void remove(Integer ID) {
		executeBD((em) -> em.remove(em.find(Usuario.class, ID)));
	}

	public Usuario obter(Integer id) {
		EntityManager em = emf.createEntityManager();
		Usuario u = em.find(Usuario.class, id);
		em.close();
		return u;
	}

	@SuppressWarnings("unchecked")
	public List<Usuario> obterTodos() {
		EntityManager em = emf.createEntityManager();
		try {
			return em.createQuery("Select u from Usuario u").getResultList();
		} finally {
			em.close();
		}
	}

	public void create(Usuario u) {
		executeBD((em) -> em.persist(u));
	}

	public void update(Usuario u) {
		executeBD((em) -> em.merge(u));
	}
	
}
