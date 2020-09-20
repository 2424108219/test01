package com.kgc.fresh.service;

import com.kgc.fresh.beans.Product;
import com.kgc.fresh.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;


    @Override
    public List<Product> getAllProduct(Integer id) {
        return productMapper.queryAllProduct(id);
    }

    @Override
    public List<Product> getProduct(Integer id) {
        return productMapper.queryProduct(id);
    }

    @Override
    public List<Product> getAllCategory(Integer category) {
        return productMapper.queryAllCategory(category);
    }

    @Override
    public List<Product> getAllCategoryCx(String name,Integer categoryId,Double price11,Double price12) {
        return productMapper.queryAllCategoryCx(name,categoryId,price11,price12);
    }

 /*   @Override
    public List<Product> getAllSc(Integer id) {
        return productMapper.queryAllSc(id);
    }
*/
    @Override
    public List<Product> getAllTime(Integer categoryId) {
        return productMapper.queryAllTime(categoryId);
    }

    @Override
    public List<Product> getAllAddTime(String name, Integer categoryId) {
        return productMapper.queryAllAddTime(name,categoryId);
    }

}
