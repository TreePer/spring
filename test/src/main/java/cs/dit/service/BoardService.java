package cs.dit.service;

import java.util.List;

import cs.dit.model.BoardVO;

public interface BoardService {
	
	public void enroll(BoardVO board);
	
	public List<BoardVO> getList();
	
	public BoardVO getPage(int boardnum);
	
	public int update(BoardVO board);
	
	public int delete(int boardnum);

}
