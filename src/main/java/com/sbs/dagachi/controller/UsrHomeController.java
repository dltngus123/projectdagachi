package com.sbs.dagachi.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.dagachi.service.ArticleService;
import com.sbs.dagachi.service.MemberService;
import com.sbs.dagachi.service.ScheduleService;
import com.sbs.dagachi.vo.Article;
import com.sbs.dagachi.vo.Member;

import jakarta.servlet.http.HttpSession;


@Controller
public class UsrHomeController {
	
	private ScheduleService scheduleService;
	
	private ArticleService articleService;
	
	private MemberService memberService;

	
	

	
	public UsrHomeController(ScheduleService scheduleService,ArticleService articleService, MemberService memberService) {
		this.scheduleService = scheduleService;
		this.articleService =articleService;
		this.memberService = memberService;
	}
	
	

	
@RequestMapping("/usr/home/main")
	
	public String showBoard1(HttpSession session,Model model,
			@RequestParam(defaultValue = "1") int page,
			@RequestParam(defaultValue = "article_title,article_impotrent,article_register") String searchKeywordTypeCode,
			@RequestParam(defaultValue = "") String searchKeyword){
		
		
		int articleCount = articleService.getArticleboardId1Count(searchKeywordTypeCode, searchKeyword);
		int itemsCountInAPage = 5;
		int pagesCount = (int) Math.ceil((double) articleCount / itemsCountInAPage);
		
		List<Article> borad1 = articleService.getBoardId1(searchKeywordTypeCode, searchKeyword, itemsCountInAPage, page);
		
		model.addAttribute("borad1",borad1);
		model.addAttribute("articleCount",articleCount);
		model.addAttribute("page",page);
		model.addAttribute("pagesCount",pagesCount);
		
		return "/usr/home/main";
		
	
	}
	
	

	
	
	
	
	
	
	  
}
