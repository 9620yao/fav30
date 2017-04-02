package com.yc.fav.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.fav.entity.Favorite;
import com.yc.fav.service.FavoriteService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class FavoriteMapperTest {

	@Autowired
	private FavoriteService favoriteService;
	
	@Test
	public void testFindFavs() {
		List<Favorite> list = favoriteService.listFavs("-0");
		System.out.println(list);
		assertNotNull(list);
	}
	
	@Test
	public void testadd() {
		Favorite fav = new Favorite();
		fav.setFtags("购物,java");
		fav.setFlabel("这是一个购物网站");
		fav.setFurl("http://www.taobao.com");
		fav.setFdesc("这是一个电子商务网站");
		Boolean result =  favoriteService.addFav(fav);
		System.out.println(result);
		assertEquals(result,true);
	}

}
