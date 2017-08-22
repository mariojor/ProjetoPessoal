package main.java.br.com.projetopessoal.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.br.com.projetopessoal.model.Funcionario;
import main.java.br.com.projetopessoal.util.FabricaDeConexoesSingleton;

@Controller
public class CadastroDeFuncionariosController {

	@RequestMapping("/show")
	public String show() {
		return "index";

	}

	@RequestMapping("/formulario")
	public String formulario() {
		System.out.println("Executando a lógica com Spring MVC");
		return "formulario";

	}

	@RequestMapping("/cadastroDeFuncionario")
	public String cadastroDeFuncionario(Model mv, Funcionario funcionario) {

		System.out.println(funcionario.getIdade());
		System.out.println(funcionario.getNome());

		cadastrar(funcionario);

		List<Funcionario> listaComFuncionarios = getLista();

		mv.addAttribute("lista", listaComFuncionarios);

		System.out.println("Lista");

		return "listaDeFuncionariosCadastrados";

	}

	private List<Funcionario> getLista() {
		EntityManager em = FabricaDeConexoesSingleton.getInstance();
		
		em.getTransaction().begin();
		
		TypedQuery<Funcionario> query = em.createQuery("SELECT f FROM Funcionario f",Funcionario.class);
		return  query.getResultList();
	}

	private void cadastrar(Funcionario funcionario) {

		EntityManager em = FabricaDeConexoesSingleton.getInstance();

		  em.getTransaction().begin();
		  em.persist(funcionario);
		  em.getTransaction().commit();


	}

}
