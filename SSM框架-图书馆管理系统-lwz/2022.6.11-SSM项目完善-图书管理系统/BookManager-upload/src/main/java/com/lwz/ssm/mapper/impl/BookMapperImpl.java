package com.lwz.ssm.mapper.impl;

import com.lwz.ssm.entity.Book;
import com.lwz.ssm.mapper.BookMapper;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookMapperImpl implements BookMapper {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

//    @Autowired
//    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
//        this.sqlSessionTemplate = sqlSessionTemplate;
//    }

    @Override
    public List<Book> findAll() {

        return sqlSessionTemplate.selectList("com.lwz.ssm.mapper.BookMapper.findAll");
    }

    @Override
    public int save(Book book) {
        return sqlSessionTemplate.insert("com.lwz.ssm.mapper.BookMapper.save",book);
    }

    @Override
    public int del(int id) {
        return sqlSessionTemplate.delete("com.lwz.ssm.mapper.BookMapper.del",id);
    }

    @Override
    public Book findById(int id) {
        return sqlSessionTemplate.selectOne("com.lwz.ssm.mapper.BookMapper.findById",id);
    }

    @Override
    public int updateBook(Book book) {
        return sqlSessionTemplate.update("com.lwz.ssm.mapper.BookMapper.update",book);
    }

    @Override
    public String selectPhotoById(int id) {
        return sqlSessionTemplate.selectOne("com.lwz.ssm.mapper.BookMapper.selectPhotoById",id);
    }


}
