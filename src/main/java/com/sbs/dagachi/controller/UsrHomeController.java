package com.sbs.dagachi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sbs.dagachi.service.ScheduleService;

@Controller
public class UsrHomeController {
	
	private ScheduleService scheduleService;
	
	public UsrHomeController(ScheduleService scheduleService) {
		this.scheduleService = scheduleService;
	}
	
	@RequestMapping("/usr/home/main")
	public String showMain() {
		return "usr/home/main";
	}
	
	
	
	
	
	  
}
