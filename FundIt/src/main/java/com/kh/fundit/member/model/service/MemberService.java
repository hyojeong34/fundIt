package com.kh.fundit.member.model.service;

import com.kh.fundit.member.model.vo.Member;

public interface MemberService {

	int selectMemberCnt(Member member);

	int updateMemberPwd(Member member);
	

}