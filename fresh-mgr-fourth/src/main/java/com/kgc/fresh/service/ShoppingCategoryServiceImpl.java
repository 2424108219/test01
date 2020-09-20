package com.kgc.fresh.service;

import com.kgc.fresh.beans.ShoppingCategory;
import com.kgc.fresh.mapper.ShoppingCategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShoppingCategoryServiceImpl implements ShoppingCategoryService {

    @Autowired
    private ShoppingCategoryMapper shoppingCategoryMapper;


    @Override
    public List<ShoppingCategory> getAllCategory() {
        return shoppingCategoryMapper.queryAllCategory();
    }
}
