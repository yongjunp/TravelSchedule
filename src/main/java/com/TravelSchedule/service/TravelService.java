package com.TravelSchedule.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TravelSchedule.dao.TravelDao;
import com.TravelSchedule.dto.Calendar;
import com.TravelSchedule.dto.Country;
import com.TravelSchedule.dto.Festival;
import com.TravelSchedule.dto.Review;
import com.TravelSchedule.dto.Schedule;
import com.TravelSchedule.dto.Tdest;

@Service
public class TravelService {

	@Autowired
	TravelDao tdao;
	
	public ArrayList<Calendar> getCalendar(String mid) {
		System.out.println("TravelService - getCalender()");
		return tdao.selectCalendar(mid);
	}
	public Calendar getCalendar(String mid, String cdcode) {
		System.out.println("TravelService - getCalender()");
		return tdao.selectCalendar_cdcode(mid, cdcode);
	}

	public int registCalendar(Calendar cd) {
		System.out.println("TravelService - registCalendar()");
		String cdcode = tdao.maxcode(cd.getMid());
		if(cdcode.equals("CD00000")) {
		cdcode = "CD00001";	
		}else {
			
		String codeName = cdcode.substring(0,2);
		int codeNum = Integer.parseInt(cdcode.substring(2))+1;
		String codeNum_String = String.format("%05d", codeNum);
		cdcode = codeName + codeNum_String;
		}
		System.out.println(cdcode);
		cd.setCdcode(cdcode);
		
		return tdao.insertCalendar(cd);
	}

	public ArrayList<Calendar> getCdcode(String mid) {
		System.out.println("travelService - getCdcode()");
		return tdao.selectCdcode(mid);
	}

	public int registSelectDest(Schedule sc, String seloption) {
		System.out.println("travelService - registSelectDest()");
		
		return tdao.insertFKcode(sc, seloption);
	}

	public int updateSc(Schedule sc, String seloption) {
		System.out.println("TravelService - updateSc()");
		return tdao.updateSc(sc,seloption);
	}

	public ArrayList<HashMap<String, String>> select_sc_td_join(String mid, String cdcode) {
		System.out.println("TravelService - select_sc_td_join()");
		return tdao.select_sc_td_join(mid, cdcode);
	}
	
	public ArrayList<Tdest> TdestSearch() {
		System.out.println("SERVICE - 여행지 검색 페이지 이동 서비스");
		
		ArrayList<Tdest> TdestService = tdao.TdestService();
		return TdestService;
	}

	public ArrayList<Tdest> CtTdestList(String ctcode) {
		System.out.println("SERVICE - 도시코드 기반 여행지 검색 서비스");
		
		ArrayList<Tdest> CtTdestService = tdao.CtTdestService(ctcode);
		return CtTdestService;
	}

	public HashMap<String, String> SearchTdestList(String searchVal) {
		System.out.println("SERVICE - 검색 결과 요청");
		
		HashMap<String, String> SearchResult = tdao.SearchTdest(searchVal);
		return SearchResult;
	}

	public Schedule getSchedule(Schedule sc, String seloption) {
		System.out.println("travelService - getSchedule()");
		return tdao.selectSchedule(sc, seloption);
	}
	
	public int updateCdstate(String cdcode, String mid) {
		System.out.println("travelSchedule - updateCdstate()");
		return tdao.updateCdstate(mid, cdcode);
	}
	public int removeCalendar(Calendar cd) {
		System.out.println("travelService - removeCalendar()");
		return tdao.deleteCalender(cd);
	}
	public int removeSchedule(Calendar cd) {
		return tdao.deleteSchedule(cd);
	}
	public ArrayList<Schedule> checkSchedule(Calendar cd) {
		System.out.println("travelSchedule - checkSchedule()");
		return tdao.getSchedule(cd);
	}
	public int removeDest(Schedule sc, String seloption) {
		System.out.println("travelService - removeDest");
		return tdao.deleteSchedule_dest(sc, seloption);
	}

	public Tdest detailTdest(String tdcode) {
		System.out.println("상세 여행지 정보");
		
		Tdest detailTdestDao = tdao.detailTdestDao(tdcode);
		return detailTdestDao;
	}

	public ArrayList<Country> CountryList() {
		System.out.println("여행지 페이지에 도시 리스트 출력");
		
		ArrayList<Country> CountryListDao = tdao.CountryListDao();
		return CountryListDao;
	}

	public int registSelectFest(Schedule sc) {
		System.out.println("travelService - registSelectFest()");
		return tdao.insertFEcode(sc);
	}

	public ArrayList<Tdest> tdest_Nearby(String ctcode, String tdcode) {
		System.out.println("travelService - tdest_Nearby()");
		return tdao.selectTdest_Nearby(ctcode, tdcode);			
	}
	public ArrayList<Schedule> getScList() {
		System.out.println("travelService - getScList");
		return tdao.selectScList();
	}
	public ArrayList<Tdest> TravelSearch(String getctcode, String category) {
		ArrayList<Tdest>  TravelSerchList = tdao.TravelSearchList(getctcode,category);
		return TravelSerchList;
	}
	public ArrayList<Festival> FestSearch(String getctcode, String category) {
		ArrayList<Festival> FestSearchList = tdao.FestSearchList(getctcode,category); 
		return FestSearchList;
	}
	public String getctcode(String ctcode) {
		 
		return tdao.getctcodeD(ctcode);
	}
	public int scUpdate(Schedule sc, String scOption) {
		System.out.println("travelService - scUpdate");
		return tdao.updateSchedule(sc, scOption);
	}
	public ArrayList<Festival> FestList(String searchval) {
		System.out.println("축제 상세 검색 서비스");
		return tdao.FestList(searchval);
	}
	public ArrayList<Tdest> TdestList(String searchval) {
		System.out.println("여행지 상세 검색 서비스");
		return tdao.TdestList(searchval);
	}
	public ArrayList<HashMap<String, String>> getPreview(String searchInfo, String seloption) {
		System.out.println(("travelService - getPreview()"));
		return tdao.getPreview(searchInfo, seloption);
	}
	public String CountReview(String tdcode) {
		// TODO Auto-generated method stub
		return tdao.CountRe(tdcode);
	}
	public Review getReview(Calendar cd) {
		return tdao.selectReview(cd);
	}
	public int delLike(Review re) {
		// TODO Auto-generated method stub
		return tdao.deleteLikeList(re);
	}
	public int delRe(Review re) {
		// TODO Auto-generated method stub
		return tdao.deleteReview(re);
	}

	

}

