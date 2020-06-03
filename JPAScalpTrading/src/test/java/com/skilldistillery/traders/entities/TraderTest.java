package com.skilldistillery.traders.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class TraderTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Trader trader;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("ScalpTradingPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		trader = em.find(Trader.class, 281400578);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		trader = null;
	}

	@Test
	void test() {
		
		/*
		 *  reference_id | trade_date | time_of_trade   | underlying | expiration_date | strike_price | trade_type | open_interest | ind  | exchange_code | spread | premium_price | size | bid_size | bid_price | ask_price | ask_size | edge | lean_size | size_ratio | delta  | theta  | vega   | gamma | sigma | rho     |
+--------------+------------+-----------------+------------+-----------------+--------------+------------+---------------+------+---------------+--------+---------------+------+----------+-----------+-----------+----------+------+-----------+------------+--------+--------+--------+-------+-------+---------+
|    281400578           | 2018-02-13 | 11:51:05:680000 | TUR        | 2019-01-18      |        40.00 | P          |           664 | ISOI | I             |   0.90 |          5.10 |   10 |      357 |      4.20 |      5.10 |      566 | 100  |       566 | 36.93      | -0.342 | -3.138 | 15.337 | 0.023 | 0.386 | -18.040 | 
		 */
		
		assertNotNull(trader);
		assertEquals(281400578, trader.getReferenceId());
		assertEquals("2018-02-13", trader.getTradeDate());
		assertEquals("11:51:05:680000", trader.getTimeOfTrade());
		assertEquals("TUR", trader.getUnderlying());
		assertEquals("2019-01-18", trader.getExpirationDate());
		assertEquals(40.00, trader.getStrikePrice());
		assertEquals("P", trader.getTradeType());
		assertEquals(664, trader.getOpenInterest());
		assertEquals("ISOI", trader.getInd());
		assertEquals("I", trader.getExchangeCode());
		assertEquals(0.90, trader.getSpread());
		assertEquals(5.10, trader.getPremiumPrice());
		assertEquals(10, trader.getSize());
		assertEquals(357, trader.getBidSize());
		assertEquals(4.20, trader.getBidPrice());
		assertEquals(5.10, trader.getAskPrice());
		assertEquals(566, trader.getAskSize());
		assertEquals("100", trader.getEdge());
		assertEquals(566, trader.getLeanSize());
		assertEquals("36.93", trader.getSizeRatio());
		assertEquals(-0.342, trader.getDelta());
		assertEquals(-3.138, trader.getTheta());
		assertEquals(15.337, trader.getVega());
		assertEquals(0.023, trader.getGamma());
		assertEquals(0.386, trader.getSigma());
		assertEquals(-18.040, trader.getRho());
	}

}


















