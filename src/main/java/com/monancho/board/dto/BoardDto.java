package com.monancho.board.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDto {
	private int rnum;
	private int bnum;
	private String btitle;
	private String bcontent;
	private String bwriter;
	private int bhit;
	private Timestamp bdate;
	
	//BoardDto : MemberDto -> 1:1 관계
	private MemberDto memberDto;
}
