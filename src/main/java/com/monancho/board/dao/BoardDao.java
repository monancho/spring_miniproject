package com.monancho.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.monancho.board.dto.BoardDto;

public interface BoardDao {
	int BBSinsert(BoardDto dto);
	int BBSupdate(BoardDto dto); 
	int BBSdelete(int bnum);
	
	
	List<BoardDto> BBSselectList(@Param("type") String searchType, @Param("keyword")String searchkeyword, @Param("startRow")int startRow,@Param("endRow") int endRow);

	int BBScount(@Param("type")  String searchType, @Param("keyword")String searchkeyword);


	void BBSbhit(int bnum); // 조회수 증가
	BoardDto BBSselectBybnum(int bnum); // 콘탠츠 보기
	
	
}
