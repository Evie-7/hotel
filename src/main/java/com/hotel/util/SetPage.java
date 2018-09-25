package com.hotel.util;

import java.util.HashMap;
import java.util.Map;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

public class SetPage {
	public Map<String, Object> setPage(Pager pager) {
		Map<String, Object> map = new HashMap<String, Object>();
		Page<?> page = PageHelper.startPage(pager.getPageNum(), pager.getPageSize());
		map.put("pager", pager.getPage(page));
		return map;
	}
}
