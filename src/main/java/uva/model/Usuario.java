package uva.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.TableGenerator;

@Entity
public class Usuario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.TABLE,
			generator = "idGenUser")
	@TableGenerator(
		name = "idGenUser",
		table = "chaves",
		pkColumnName = "id",
		pkColumnValue = "usuario",
		valueColumnName = "valor"
	)
	public Integer id;
	public String email;
	public String nome;
	public String senha;
	public String telefone;

}