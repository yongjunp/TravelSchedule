package com.TravelSchedule.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.TravelSchedule.dto.Member;

public interface MemberDao {

	int insertMember(Member mem);

	String selectInfo(@Param("info")String info, @Param("location")String location);

	Member selectMember(Member mem);

	Member selectMemberInfo(String loginId);

	int memberUpdate(Member mem);

	int passwordUpdate(@Param("mid")String mid, @Param("mpw")String mpw);

	@Select("SELECT * FROM MEMBERS WHERE MID = #{id}")
	Member selectKakaoMemberInfo(String id);

	@Insert("INSERT INTO MEMBERS(MID, MPW, MNICKNAME, MPROFILE, MSTATE) VALUES( #{mid}, 'kakaoAccount', #{mnickname}, #{mprofile}, 'YK')")
	int regist_Kakao(Member member);

	@Select("SELECT * FROM MEMBERS WHERE MID = #{mid}")
	Member CheckNaverLogin(String mid);

	@Insert("INSERT INTO MEMBERS(MID, MPW, MNICKNAME, MPROFILE, MSTATE) VALUES(#{mid}, 'naverAccount', #{mnickname}, #{mprofile}, 'NA')")
	int registMemberInfo_Naver(Member member);

	ArrayList<Member> selectMemberList(Member member);
	

}
