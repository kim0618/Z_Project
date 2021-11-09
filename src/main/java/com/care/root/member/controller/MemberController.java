package com.care.root.member.controller;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.root.member.dto.MemberDTO;
import com.care.root.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired MemberService ms;
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	@GetMapping("membership")
	public String membership() {
		return "member/membership";
	}
	@GetMapping("main")
	public String main(HttpServletRequest req) {		
		return "member/main";
	}
	
	@RequestMapping(value = "chkUser")
	public String chkUser(HttpServletRequest request,Model model) {
		MemberDTO dto = new MemberDTO();
		String inputId = request.getParameter("id");
		String inputPwd = request.getParameter("pwd");
		dto.setId(inputId); dto.setPwd(inputPwd);
		ms.chkUser(model, dto);
		HttpSession session = request.getSession();
		if(model.getAttribute("login") != null) {
			session.setAttribute("user", dto.getName());
		}
		return "member/loginchk";
	}
	
	@PostMapping("membershipchk")
	public String membershipchk(HttpServletRequest request,Model model) throws Exception {
		request.setCharacterEncoding("utf-8");
		MemberDTO dto = new MemberDTO();
		dto.setId(request.getParameter("id"));
		dto.setPwd(request.getParameter("pwd"));
		dto.setName(request.getParameter("name"));
		dto.setAddr(request.getParameter("addr"));
		try {
			ms.insertMember(dto);
			model.addAttribute("mem",dto);
		} catch (Exception e) {
			model.addAttribute("mem",null);
		}
	//	model.addAttribute("mem",dto);
		return "member/membershipchk";
	}
	
	@RequestMapping("logout")
	public void logout(HttpSession session, HttpServletResponse response) {
		session.invalidate();
		PrintWriter out = null;
		response.setContentType("text/html; charset=utf-8");
		try {
			out = response.getWriter();
		} catch (Exception e) {
			e.printStackTrace();
		}
		out.print("<script> alert('로그아웃 되었습니다');"
				+ "location.href='login'; </script>");
		//return "login/logout";
	}
	
	@GetMapping("memberlist")
	public String memberlist(Model model) {
		ms.memberView(model);
		
		return "member/memberlist";
	}
	
	@GetMapping("memberInfo")
	public String memberInfo(Model model,HttpServletRequest request) {
		MemberDTO dto = new MemberDTO();
		dto.setId(request.getParameter("user"));
		ms.memberInfo(model, dto);
		if(model.getAttribute("info") == null) {
			return "redirect:memberlist";
		}
		return "member/memberInfo";
	}
	
	
	
}























