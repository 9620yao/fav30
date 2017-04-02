package com.yc.fav.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.fav.entity.Tag;
import com.yc.fav.service.TagService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class TagMapperTest {

	@Autowired
	private TagService tagService;
	
	@Test
	public void testFindAllTags() {
		List<Tag> list = tagService.listTags();
		System.out.println(list);
		assertNotNull(list);
	}

}
