package com.skilldistillery.traders.data;

import com.skilldistillery.traders.entities.Trader;

public interface TraderDAO {
	public Trader findById(int referenceId);
	
}
