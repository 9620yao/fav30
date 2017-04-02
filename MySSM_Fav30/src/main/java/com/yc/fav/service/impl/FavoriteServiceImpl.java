package com.yc.fav.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yc.fav.entity.Favorite;
import com.yc.fav.mapper.FavoriteMapper;
import com.yc.fav.service.FavoriteService;
import com.yc.fav.service.TagService;

@Service("favoriteService")
public class FavoriteServiceImpl implements FavoriteService {

	@Autowired
	private FavoriteMapper favoriteMapper;

	@Autowired
	private TagService tagService;

	@Override
	public List<Favorite> listFavs(String tagName) {
		return favoriteMapper.findFavs(tagName);
	}

	@Override
	@Transactional
	public boolean addFav(Favorite favorite) {
		favorite.setFtags(favorite.getFtags().replace(" ", ""));
		// favoriteMapper.addFav(favorite);
		// 1.增加标签或者更新
		String[] tags = favorite.getFtags().split(",");
		for (String tag : tags) {
			if (tagService.findTag(tag) != null) {
				// 存在
				tagService.updateTagCount(tag);
			} else {
				// 不存在
				tagService.insertTag(tag);
			}
		}
		return favoriteMapper.insertFav(favorite) > 0;
	}

}
