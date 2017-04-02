package com.yc.fav.web.handler;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.fav.entity.Tag;
import com.yc.fav.service.TagService;

@Controller("tagHandler")
@RequestMapping("tag")
public class TagHandler {
	
	@Autowired
	private TagService tagService;

	@RequestMapping(value="",method=RequestMethod.GET)
	@ResponseBody
	public List<Tag> list(){
		LogManager.getLogger().debug("===>list()");
		return tagService.listTags();
	}
}