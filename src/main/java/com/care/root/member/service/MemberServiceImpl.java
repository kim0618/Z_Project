package com.care.root.member.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.root.member.dao.MemberDAO;
import com.care.root.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired MemberDAO mapper;
	public void insertMember(MemberDTO dto) {	// 회원가입
	mapper.insertMember(dto);
	}
	
	
	public void chkUser(Model model,MemberDTO dto) {	// 로그인 비교
		model.addAttribute("login",mapper.chkUser(dto));
	}

	public void memberView(Model model) {			// 유저 리스트
		model.addAttribute("list",mapper.memberView());
	}


	
	public void memberInfo(Model model, MemberDTO dto) {	// 유저 상세정보
		model.addAttribute("info",mapper.memberInfo(dto));
	}




}
