package com.sbs.dagachi.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sbs.dagachi.service.ArticleService;
import com.sbs.dagachi.vo.Article;

import jakarta.servlet.http.HttpSession;

@Controller
public class UsrArticleController {

	public ArticleService articleService;

	public UsrArticleController(ArticleService articleService) {
		this.articleService = articleService;
		

	}

	@RequestMapping("/article/noticeList")
	
	public String showBoard1(HttpSession session,Model model,
			@RequestParam(defaultValue = "1") int page,
			@RequestParam(defaultValue = "article_title,article_impotrent,article_register") String searchKeywordTypeCode,
			@RequestParam(defaultValue = "") String searchKeyword){
		
		
		int articleCount = articleService.getArticleboardId1Count(searchKeywordTypeCode, searchKeyword);
		int itemsCountInAPage = 10;
		int pagesCount = (int) Math.ceil((double) articleCount / itemsCountInAPage);
		
		List<Article> borad1 = articleService.getBoardId1(searchKeywordTypeCode, searchKeyword, itemsCountInAPage, page);
		
		model.addAttribute("borad1",borad1);
		model.addAttribute("articleCount",articleCount);
		model.addAttribute("page",page);
		model.addAttribute("pagesCount",pagesCount);
		
		return "/article/noticeList";
		
	
	}
	
	@RequestMapping("/article/detail")
	public String showDetail(HttpSession session,Model model,@RequestParam("article_id") String article_id) {
		
		List<Article> board = articleService.getarticlebyarticleid(article_id);
		
		model.addAttribute("board",board);
		
		return "/article/detail";
		
	}
	
	@RequestMapping("/article/domodify")
	public String showmodify(HttpSession session,Model model,@RequestParam("article_id") String article_id) {
		
		List<Article> board = articleService.getarticlebyarticleid(article_id);
		
		model.addAttribute("board",board);
		return "/article/modifyFrom";
	}
	
	@RequestMapping(value = "/article/modify", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String articleModify(HttpSession session,@RequestParam("article_title")String article_title,@RequestParam("article_body")String article_body,@RequestParam(value = "article_attach", required = false)String article_attach,@RequestParam("article_id")String article_id) {
		articleService.articleModify(article_title, article_body, article_attach, article_id);
		
		System.out.println("##########"+article_title+article_body+article_id+article_attach);
		
		return "/article/noticeList";
	   
	}
	
	@RequestMapping(value = "/article/delete", method = RequestMethod.POST)
	@ResponseBody
	public String deleteArticle(@RequestParam("articleId") String articleId) {
	    articleService.articleDelete(articleId);
	    return "/article/noticeList";
	}



	

}
