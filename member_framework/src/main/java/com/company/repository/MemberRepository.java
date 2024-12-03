package com.company.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.company.dto.MemberDTO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberRepository {
	
	private final  SqlSessionTemplate sql;
	
	public List<MemberDTO> findAll(){
		return sql.selectList("Member.findAll");
	}


	public int save(MemberDTO memberDTO) { 					/* static들어가면 안됨 일 회성 작업 */
		System.out.println("memberDTO =" + memberDTO);
		/* return 0; -> save 화면 */
		
		return sql.insert("Member.save", memberDTO);
	}

	public MemberDTO login(MemberDTO memberDTO) {
		return sql.selectOne("Member.login", memberDTO);
	}


	public MemberDTO findById(Long id) {
		return sql.selectOne("Member.findById", id);
	}

	
	

}
