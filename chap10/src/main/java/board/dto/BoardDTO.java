package board.dto;

import java.sql.Date;

public class BoardDTO {
	
	private Integer board_id; // PK
	private String board_title;
	private String board_content;
	private String board_password;
	private String writer;
	private Integer wiew_count;
	private Date write_date;
	public Integer getBoard_id() {
		return board_id;
	}
	public void setBoard_id(Integer board_id) {
		this.board_id = board_id;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_password() {
		return board_password;
	}
	public void setBoard_password(String board_password) {
		this.board_password = board_password;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Integer getWiew_count() {
		return wiew_count;
	}
	public void setWiew_count(Integer wiew_count) {
		this.wiew_count = wiew_count;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	
	public BoardDTO(Integer board_id, String board_title, String board_content, String board_password, String writer,
			Integer wiew_count, Date write_date) {
		super();
		this.board_id = board_id;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_password = board_password;
		this.writer = writer;
		this.wiew_count = wiew_count;
		this.write_date = write_date;
	}
	
}
