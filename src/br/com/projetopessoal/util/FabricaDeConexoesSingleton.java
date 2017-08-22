package br.com.projetopessoal.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FabricaDeConexoesSingleton {

	private static EntityManager em;
	
	public FabricaDeConexoesSingleton() {
	}
	
	public static EntityManager getInstance() {
		if(em == null) {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProjetoPessoal");
			
			em =  emf.createEntityManager();
		}
		
		return em;
	}
	
	
}
