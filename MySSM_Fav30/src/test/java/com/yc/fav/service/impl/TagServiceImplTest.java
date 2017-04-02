package com.yc.fav.service.impl;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.fav.service.TagService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class TagServiceImplTest {

	@Autowired
	private TagService tagService;
	
	@Test
	public void testFindTag() {
		System.out.println(tagService.findTag("a"));
	}

}
