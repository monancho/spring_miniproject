package com.monancho.board.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommentDto {
	private int cnum;
	private int bnum;
	private String memberid;
	private String ccontent;
	private Date cdate;
	
}
