package uva.dao;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import uva.model.Fornecedor;

public class FornecedorDAO {
	
	private final EntityManagerFactory emf;

	public FornecedorDAO() {
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
		executeBD((em) -> em.remove(em.find(Fornecedor.class, id)));
	}

	public Fornecedor obter(Integer id) {
		EntityManager em = emf.createEntityManager();
		Fornecedor u = em.find(Fornecedor.class, id);
		em.close();
		return u;
	}

	@SuppressWarnings("unchecked")
	public List<Fornecedor> obterTodos() {
		EntityManager em = emf.createEntityManager();
		try {
			return em.createQuery("Select u from Fornecedor u").getResultList();
		} finally {
			em.close();
		}
	}

	public void create(Fornecedor f) {
		executeBD((em) -> em.persist(f));
	}

	public void update(Fornecedor f) {
		executeBD((em) -> em.merge(f));
	}
	
}
