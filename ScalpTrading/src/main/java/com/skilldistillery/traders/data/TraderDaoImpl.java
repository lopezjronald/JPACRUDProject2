package com.skilldistillery.traders.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.traders.entities.Trader;

@Service
@Transactional
public class TraderDaoImpl implements TraderDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Trader findById(int referenceId) {
		return em.find(Trader.class,  referenceId);
	}

}
