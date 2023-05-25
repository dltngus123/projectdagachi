package com.sbs.dagachi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sbs.dagachi.service.MemberService;
import com.sbs.dagachi.vo.Member;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/common")
public class UsrCommonController {

	@Autowired
	private MemberService memberService;

	public UsrCommonController(MemberService memberService) {
		this.memberService = memberService;

	}

	@GetMapping("/login")
	public void login() {
	}

	@PostMapping("/dologin")
	public String dologin(HttpSession session, String member_id, String member_pwd, HttpServletRequest request) {
		String url = "";
		String msg = "";
		int result = memberService.login(member_id, member_pwd);

		if (result == 0) {
			url = "redirect:../usr/home/main";
			Member loginUser = memberService.getMemberById(member_id);
			session.setAttribute("loginUser", loginUser);

		} else if (result == 1) {
			url = "../jsp/common/login";
			msg = "비밀번호가 일치하지 않습니다.";
			request.setAttribute("msg", msg);

		} else if (result == 2) {
			url = "../jsp/common/login";
			msg = "일치하는 아이디가 없습니다.";
			request.setAttribute("msg", msg);
		} else {
			url = "../jsp/common/login";
			msg = "에러";
			request.setAttribute("msg", msg);
		}

		return url;
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		String url="../jsp/common/login";
		
		session.invalidate();
		
		
		return url;
		
		
	}

}
