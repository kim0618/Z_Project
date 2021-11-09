package com.care.root.member.service;

import org.springframework.ui.Model;

import com.care.root.member.dto.MemberDTO;

public interface MemberService {
	public void insertMember(MemberDTO dto);
	public void chkUser(Model model,MemberDTO dto);
	public void memberView(Model model);
	public void memberInfo(Model model,MemberDTO dto);
}
