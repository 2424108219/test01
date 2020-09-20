package com.kgc.fresh.service;

import com.kgc.fresh.beans.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAllProduct(Integer id);

    List<Product> getProduct(Integer id);

    List<Product> getAllCategory(Integer category);

    List<Product> getAllCategoryCx(String name,Integer categoryId,Double price11,Double price12);

/*
    List<Product> getAllSc(Integer id);
*/

    List<Product> getAllTime(Integer categoryId);

    List<Product> getAllAddTime(String name, Integer categoryId);
}
