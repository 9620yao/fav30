package com.yc.fav.mapper;

import java.util.List;

import com.yc.fav.entity.Tag;

public interface TagMapper {

	List<Tag> findAllTags();

	Boolean findTag(String tag);

	void insertTag(String tag);

	void updateTagCount(String tname);

}
