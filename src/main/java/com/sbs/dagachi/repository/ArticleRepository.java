package com.sbs.dagachi.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sbs.dagachi.vo.Article;

@Mapper
public interface ArticleRepository {

	public List<Article> getBoardId1(int limitStart, int limitTake, String searchKeywordTypeCode, String searchKeyword);

	public int getArticleboardId1Count(String searchKeywordTypeCode, String searchKeyword);
	
	public List<Article> getarticlebyarticleid(String article_id);
	
	public void articleModify(@Param("article_title")String article_title,@Param("article_body")String article_body,@Param("article_attach")String article_attah,@Param("article_id")String article_id );
	
	public void articleDelete(@Param("article_id")String article_id);
}
