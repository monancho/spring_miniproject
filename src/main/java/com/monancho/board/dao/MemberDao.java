package com.monancho.board.dao;
import com.monancho.board.dto.MemberDto;

public interface MemberDao {
	
	

	int MBRinsert(MemberDto dto);
	int MBRlogin(MemberDto dto);
	int MBRidCheck(String mid);
	int MBRupdate(MemberDto dto);
	int MBRdelete(String mid);
	MemberDto MBRselectById(String mid);
}
