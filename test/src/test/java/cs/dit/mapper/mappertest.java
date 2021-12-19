package cs.dit.mapper;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cs.dit.model.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class mappertest {
	
	
	private static final Logger log = LoggerFactory.getLogger(mappertest.class);
	
	@Autowired
	private BoardMapper mapper;
	
	@Test
	public void test() {
		
		int result = mapper.delete(21);
		log.info("result : " + result);
		
	}

}
