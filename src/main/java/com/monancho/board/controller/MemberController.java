package com.monancho.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.monancho.board.dao.MemberDao;
import com.monancho.board.dto.MemberDto;

@Controller
public class MemberController {
@Autowired
private SqlSession sqlSession;

	@RequestMapping(value = "/")
	public String home() {
		return "redirect:index";
	}
	



	@RequestMapping("join")
	public String join() {
		return "join";
	}
	
	@RequestMapping("joinOk")
	public String joinOk(HttpServletRequest request, Model model, MemberDto memberDto) {
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		int joinFlag = dao.MBRinsert(memberDto);
		
		if(joinFlag == 1) return "redirect:index";
		else return "redirect:join";
		
	}
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	@RequestMapping("loginOk")
	public String loginOk(HttpServletRequest request, Model model, MemberDto memberDto, HttpSession session) {
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		int loginFlag = dao.MBRlogin(memberDto);
		
		if(loginFlag == 1) {
			
			session.setAttribute("sid", memberDto.getMemberid());
			return "redirect:index";
			}
		else return "redirect:login";
		
	}
	@RequestMapping("mypage")
	public String mypage(HttpSession session, HttpServletRequest request, Model model) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		System.out.println("세션 아이디" + session.getAttribute("sid"));
		 if(session.getAttribute("sid") != null) {
			 MemberDto mDto = dao.MBRselectById((String)session.getAttribute("sid"));
			 model.addAttribute("mDto",mDto);
			 return "mypage";
		 } else { 
			 return "redirect:login";}
	}
	@RequestMapping("MBRupdate")
	public String MBRupdate(HttpSession session, MemberDto memberDto, Model model) {		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		 if(session.getAttribute("sid") != null) {
			 MemberDto mDto = dao.MBRselectById((String)session.getAttribute("sid"));
			 model.addAttribute("mDto", mDto);
			 return "modifyMember";}
		 else { 
			 return "redirect:login";}
	}
	@RequestMapping("MBRUpdateOk")
	public String MBRUpdateOk(MemberDto memberDto, Model model) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		int pwCheckFlag = dao.MBRlogin(memberDto);
		if (pwCheckFlag == 1) {
			dao.MBRupdate(memberDto);
			return "redirect:mypage";
		} else return "redirect:MBRupdate";
		
		
	}
	@RequestMapping("MBRdelete")
	public String MBRdelete(HttpSession session, MemberDto memberDto, Model model) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		 if(session.getAttribute("sid") != null) {
			 MemberDto mDto = dao.MBRselectById((String)session.getAttribute("sid"));
			 model.addAttribute("mDto", mDto);
			 return "deleteMember";}
		 else { 
			 return "redirect:login";}
	
	} @RequestMapping("MBRdeleteOk")
	public String MBRdeleteOk(MemberDto memberDto, Model model, HttpSession session) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		int pwCheckFlag = dao.MBRlogin(memberDto);
		if (pwCheckFlag == 1) {
			int MBRdeletFlag = dao.MBRdelete(memberDto.getMemberid());
			if (MBRdeletFlag == 1) {
				session.invalidate();
				return "redirect:index";}
			else {return "redirect:mypage";}
			
		} else return "redirect:mypage";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}
}
