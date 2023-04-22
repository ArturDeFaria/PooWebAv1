package uva.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.TableGenerator;

@Entity
public class Fornecedor{

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE,
	generator = "idGenFornecedor")
	@TableGenerator(
		name = "idGenFornecedor",
		table = "chaves",
		pkColumnName = "id",
		pkColumnValue = "fornecedor",
		valueColumnName = "valor"
	)
	public Integer id;
	public String nome;
	public String telefone;
	public String email;
	public String cnpj;

}