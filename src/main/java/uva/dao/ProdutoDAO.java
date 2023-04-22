package uva.dao;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import uva.model.Produto;

public class ProdutoDAO {
	
	private final EntityManagerFactory emf;

	public ProdutoDAO() {
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
		executeBD((em) -> em.remove(em.find(Produto.class, id)));
	}

	public Produto obter(Integer id) {
		EntityManager em = emf.createEntityManager();
		Produto p = em.find(Produto.class, id);
		em.close();
		return p;
	}
	
	@SuppressWarnings("unchecked")
	public List<Produto> buscar(String nome) {
		EntityManager em = emf.createEntityManager();
		try {
			return em.createQuery("Select p from Produto p where p.nome like '%"+nome+"%'").getResultList();
		} 
		finally {
			em.close();
		}
	}

	@SuppressWarnings("unchecked")
	public List<Produto> obterTodos() {
		EntityManager em = emf.createEntityManager();
		try {
			return em.createQuery("Select u from Produto u").getResultList();
		} finally {
			em.close();
		}
	}

	public void create(Produto p) {
		executeBD((em) -> em.persist(p));
	}

	public void update(Produto p) {
		executeBD((em) -> em.merge(p));
	}

	
}
