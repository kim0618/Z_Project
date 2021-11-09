package com.care.root.member.dao;

import java.util.ArrayList;

import com.care.root.member.dto.MemberDTO;

public interface MemberDAO {
	public void insertMember(MemberDTO dto);
	public MemberDTO chkUser(MemberDTO dto);
	public ArrayList<MemberDTO> memberView();
	public MemberDTO memberInfo(MemberDTO dto);
}
