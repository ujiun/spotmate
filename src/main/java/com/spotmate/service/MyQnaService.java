package com.spotmate.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.MypageRDao;
import com.spotmate.vo.myQnaVo;

@Service
public class MyQnaService {

	@Autowired
	private MypageRDao mrDao;

	// myQna
	public void InsertQna(myQnaVo mqv) {
		System.out.println("MyQnaService > InsertQna");
		mrDao.InsertQna(mqv);
	}
	
		 
	
	
}