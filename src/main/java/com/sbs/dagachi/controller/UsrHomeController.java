package com.sbs.dagachi.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sbs.dagachi.service.ArticleService;
import com.sbs.dagachi.service.MemberService;
import com.sbs.dagachi.service.PMService;
import com.sbs.dagachi.service.PSService;
import com.sbs.dagachi.service.ProjectLService;
import com.sbs.dagachi.service.ScheduleService;
import com.sbs.dagachi.vo.Article;
import com.sbs.dagachi.vo.Member;
import com.sbs.dagachi.vo.PM;
import com.sbs.dagachi.vo.PS;
import com.sbs.dagachi.vo.ProjectL;

import jakarta.servlet.http.HttpSession;


@Controller
public class UsrHomeController {
	
	private ScheduleService scheduleService;
	
	private ArticleService articleService;
	
	private MemberService memberService;

	private PSService psService;
	
	private ProjectLService projectLService;
	
	private PMService pMService;
	

	
	public UsrHomeController(ScheduleService scheduleService,ArticleService articleService, MemberService memberService,PSService psService,ProjectLService projectLService,PMService pMService) {
		this.scheduleService = scheduleService;
		this.articleService =articleService;
		this.memberService = memberService;
		this.psService=psService;
		this.projectLService=projectLService;
		this.pMService=pMService;
	}
	
	

	
@RequestMapping("/usr/home/main")
	
	public String showBoard1(HttpSession session,Model model,
			@RequestParam(defaultValue = "1") int page,
			@RequestParam(defaultValue = "article_title,article_impotrent,article_register") String searchKeywordTypeCode,
			@RequestParam(defaultValue = "") String searchKeyword){
		String loginUser=((Member)session.getAttribute("loginUser")).getMember_id();
		
		int articleCount = articleService.getArticleboardId1Count(searchKeywordTypeCode, searchKeyword);
		int itemsCountInAPage = 5;
		int pagesCount = (int) Math.ceil((double) articleCount / itemsCountInAPage);
		
		List<Article> borad1 = articleService.getBoardId1(searchKeywordTypeCode, searchKeyword, itemsCountInAPage, page);
		
		model.addAttribute("borad1",borad1);
		model.addAttribute("articleCount",articleCount);
		model.addAttribute("page",page);
		model.addAttribute("pagesCount",pagesCount);
		
		
		//받은 업무 섹션 시작
		List<PS>psList=psService.getPSListWait(loginUser);
		model.addAttribute("psList", psList);
		//받은 업무 섹션 끝
		
		//업무 진척도 시작
		String teamName=((Member)session.getAttribute("loginUser")).getMember_team1();
		
		List<ProjectL>plList=projectLService.getPLlistByTeam(teamName);//로그인한 유저의 팀의 pl가져오기
		for(ProjectL pl:plList) {
			int plProgress=0;
			List<PM>pmList=pMService.getPMListByPLId(pl.getPl_Id());
			double pmSize=pmList.size();//해당 pl에 속해있는 총 pm의 갯수
			int completeSize=0;
			for(PM pm:pmList) {
				if(pm.getPm_status()==2) {
					completeSize++;
				}
			}
			plProgress= (int)(completeSize/pmSize*100.0);
			
			pl.setPlProgress(plProgress);
		}
		model.addAttribute("plList", plList);
		
		//업무 진척도 끝
		
		
		
		
		
		
		
		
		
		
		
		
		return "/usr/home/main";
		
	
	}
	
	

	
	
	
	
	
	
	  
}
