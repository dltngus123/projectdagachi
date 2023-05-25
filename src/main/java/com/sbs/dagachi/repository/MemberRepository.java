package com.sbs.dagachi.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sbs.dagachi.vo.Member;

@Mapper
public interface MemberRepository {

	List<Member> getMember();
	
	Member getMemberById(String member_id);
	
	List<Member>getMembersNameByteam(String member_team1);
	
	public List<Member> getMembername(@Param("member_name")String member_name);
	
	public List<Member> getDepartmentRepresentative(@Param("member_department")int member_department);
	
	List<Member> getMemberListByTeam(int team);

	public void updateMemberStatus(String member_status,String member_id );
	
}
