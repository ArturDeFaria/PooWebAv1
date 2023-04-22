package uva.dao;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import uva.model.Estoque;

public class EstoqueDAO {
	
	private final EntityManagerFactory emf;

	public EstoqueDAO() {
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

	public void remove(Integer id) {
		executeBD((em) -> em.remove(em.find(Estoque.class, id)));
	}

	public Estoque obter(Integer id) {
		EntityManager em = emf.createEntityManager();
		Estoque u = em.find(Estoque.class, id);
		em.close();
		return u;
	}

	@SuppressWarnings("unchecked")
	public List<Estoque> obterTodos() {
		EntityManager em = emf.createEntityManager();
		try {
			return em.createQuery("Select u from Estoque u").getResultList();
		} finally {
			em.close();
		}
	}

	public void create(Estoque u) {
		executeBD((em) -> em.persist(u));
	}

	public void update(Estoque u) {
		executeBD((em) -> em.merge(u));
	}

}
