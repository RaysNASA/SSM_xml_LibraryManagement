package com.lwz.ssm.service;

import com.lwz.ssm.entity.Book;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface BookService {
    PageInfo<Book> findAllBooks(int pageNum);

    int saveBook(Book book);

    int delBookById(int id);

    Book findBookById(int id);

    int updateBook(Book book);

    String selectPhotoById(int id);
}
