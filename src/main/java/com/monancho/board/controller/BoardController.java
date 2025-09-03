package com.monancho.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.monancho.board.dao.BoardDao;
import com.monancho.board.dao.Incoding;
import com.monancho.board.dto.BoardDto;


@Controller
public class BoardController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("boardlist")
	public String boardlist(HttpServletRequest request, Model model) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		Incoding incoding = new Incoding();
		
		String searchType = "btitle";
				
		if(request.getParameter("searchType") != null )
		searchType = request.getParameter("searchType");
		System.out.println("검색타입 : " + searchType);
		if(!searchType.equals("btitle") && !searchType.equals("bcontent") && !searchType.equals("bwriter")) {
		searchType = "btitle";}
		
		String searchKeyword = "";
		if(request.getParameter("searchKeyword") != null)
		searchKeyword = request.getParameter("searchKeyword");
		System.out.println("검색키워드 : "+ searchKeyword);
		
		
		int pageNum = 0;
		if(request.getParameter("pageNum") != null )
		pageNum = Integer.parseInt(request.getParameter("pageNum"));
		if(pageNum < 0) pageNum = 0;
		
		int pageSize = 10;
		int blockSize = 5;
		
		
		System.out.println("검색타입 : " + searchType);
		System.out.println("검색키워드 : "+ searchKeyword);
		System.out.println("목록수 : "+ dao.BBScount(searchType, searchKeyword));
		
		int totalBoard = dao.BBScount(searchType, searchKeyword);
		
		int startRow = pageNum * pageSize + 1;
		int endRow = startRow + pageSize - 1;	
		
		int totalPage = totalBoard / pageSize;
		int startPage = pageNum/blockSize * blockSize;
		int endPage = (startPage + blockSize - 1);
		
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		model.addAttribute("pageNum",pageNum);
		
		String utf8keyword= incoding.incoding(searchKeyword);
		System.out.println("인코딩된검색키워드 : "+ utf8keyword);
		
		model.addAttribute("searchType", searchType); // 페이지 변경시 필드값 유지 - 검색타입
		model.addAttribute("searchKeyword", searchKeyword); // 페이지 변경시 필드값 유지 - 검색 키워드
		//model.addAttribute("searchKeyword", utf8keyword); // 페이지 파라미터 인코딩 전달 - 검색 키워드
		
		
		model.addAttribute("bCnt",totalBoard);
		
		List<BoardDto> boardDtos = dao.BBSselectList(searchType, searchKeyword, startRow, endRow);
		model.addAttribute("bDtos",boardDtos);
		
		return "boardView";
	} @RequestMapping("content")
		public String content(HttpServletRequest request, Model model) {
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		model.addAttribute("pageNum",request.getParameter("pageNum"));
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		dao.BBSbhit(bnum);
		BoardDto dto = dao.BBSselectBybnum(bnum);
		model.addAttribute("bDto",dto);
			return "content";
		}
	@RequestMapping("BBSedit")
		public String BBSedit(HttpServletRequest request, Model model, HttpSession session) {
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		String sid = (String)session.getAttribute("sid");
	

		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		BoardDto boardDto = dao.BBSselectBybnum(bnum);
		
		if(boardDto.getBwriter().equals(sid)) { // 잘못된 접근 예외 처리 (백엔드 처리)
			model.addAttribute("bDto",boardDto);
			return "edit";
			
		}	else {
			return "redirect:content?bnum="+bnum;}		
	}
	@RequestMapping("BBSeditOk")
	public String BBSeditOk(HttpServletRequest request, Model model, BoardDto boardDto) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.BBSupdate(boardDto);
		return "redirect:content?bnum="+boardDto.getBnum();
		
	}
	@RequestMapping("BBSdelete")
	public String BBSdelete(HttpServletRequest request, Model model, HttpSession session) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		String pnum = request.getParameter("pageNum");
		
		dao.BBSdelete(Integer.parseInt(request.getParameter("bnum")));
		
		return "redirect:boardlist?pageNum="+pnum;
	}
	

}
