package uva.model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.TableGenerator;

@Entity
public class Estoque{

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE,
		generator = "idGenEstoque")
	@TableGenerator(
		name = "idGenEstoque",
		table = "chaves",
		pkColumnName = "id",
		pkColumnValue = "estoque",
		valueColumnName = "valor"
	)
	public Integer id;
	public Integer produto_id;
	public String loja;
	public Integer quantidade;
	public static List<Produto> listaProduto;

}