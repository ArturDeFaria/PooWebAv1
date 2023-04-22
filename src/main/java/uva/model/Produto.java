package uva.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.TableGenerator;

@Entity
public class Produto{

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE,
		generator = "idGenProduto")
	@TableGenerator(
		name = "idGenProduto",
		table = "chaves",
		pkColumnName = "id",
		pkColumnValue = "produto",
		valueColumnName = "valor"
	)
	public Integer id;
	public String descricao;
	public String nome;
	public Double preco;

}