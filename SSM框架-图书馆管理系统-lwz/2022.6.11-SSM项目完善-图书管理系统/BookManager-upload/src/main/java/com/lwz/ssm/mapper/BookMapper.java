package com.lwz.ssm.mapper;

import com.lwz.ssm.entity.Book;

import java.util.List;

public interface BookMapper {
    List<Book> findAll();

    int save(Book book);

    int del(int id);

    Book findById(int id);

    int updateBook(Book book);

    String selectPhotoById(int id);
}
