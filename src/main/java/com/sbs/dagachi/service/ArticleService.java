package com.sbs.dagachi.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sbs.dagachi.repository.ArticleRepository;
import com.sbs.dagachi.vo.Article;

@Service
public class ArticleService {
	private ArticleRepository articleRepository;
	
	public ArticleService(ArticleRepository articleRepository) {
		this.articleRepository = articleRepository;
		
	}
	
	public List<Article> getBoardId1(String searchKeywordTypeCode, String searchKeyword, int itemsCountInAPage, int page){
		int limitStart = (page - 1) * itemsCountInAPage;
	    int limitTake = itemsCountInAPage;
	    
	    List<Article> articles = articleRepository.getBoardId1(limitStart, limitTake, searchKeywordTypeCode, searchKeyword);
	    
	    return articles;
	}
	
	public int getArticleboardId1Count(
			String searchKeywordTypeCode, String searchKeyword) {
		return articleRepository.getArticleboardId1Count( searchKeywordTypeCode, searchKeyword);
	}
	
	public List<Article> getarticlebyarticleid(String article_id){
		return articleRepository.getarticlebyarticleid(article_id);
	}
	
	public void articleModify(String article_title,String article_body,String article_attah,String article_id ) {
		articleRepository.articleModify(article_title, article_body, article_attah, article_id);
	}
	
	public void articleDelete(String article_id) {
		articleRepository.articleDelete(article_id);
	}
	
	
}