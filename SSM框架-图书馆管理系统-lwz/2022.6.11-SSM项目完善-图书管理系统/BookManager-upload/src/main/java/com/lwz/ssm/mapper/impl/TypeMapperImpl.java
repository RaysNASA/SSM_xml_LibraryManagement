package com.lwz.ssm.mapper.impl;

import com.lwz.ssm.entity.Type;
import com.lwz.ssm.mapper.TypeMapper;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TypeMapperImpl implements TypeMapper {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

//    @Autowired
//    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
//        this.sqlSessionTemplate = sqlSessionTemplate;
//    }

    @Override
    public List<Type> findAll() {
        return sqlSessionTemplate.selectList("com.lwz.ssm.mapper.TypeMapper.findAll");
    }
}
