package com.skilldistillery.traders.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.traders.data.TraderDAO;
import com.skilldistillery.traders.entities.Trader;

@Controller
public class TraderController {

	@Autowired
	private TraderDAO dao;
	
	@RequestMapping(path="getTrader.do")
	public String findTrader(@RequestParam Integer referenceId, Model model) {
		Trader trader = dao.findById(referenceId);
		model.addAttribute("trader", trader);
		return "traderDetail";
	}
}
