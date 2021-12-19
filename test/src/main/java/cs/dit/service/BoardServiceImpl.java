package cs.dit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cs.dit.mapper.BoardMapper;
import cs.dit.model.BoardVO;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public void enroll(BoardVO board) {
		mapper.enroll(board);
	}
	
	@Override
	public List<BoardVO> getList() {
		return mapper.getList();
	}
	
	@Override
	public BoardVO getPage(int boardnum) {
		return mapper.getPage(boardnum);
	}
	
	public int update(BoardVO board) {
		return mapper.update(board);
	}
	
	public int delete(int boardnum) {
		return mapper.delete(boardnum);
	}
}
