package com.kgc.fresh.mapper;

import com.kgc.fresh.beans.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {
    List<Product> queryAllProduct( @Param("id")Integer id);

    List<Product> queryProduct(@Param("id")Integer id);

    List<Product> queryAllCategory(@Param("category") Integer category);


    List<Product> queryAllCategoryCx(@Param("name") String name,@Param("categoryId") Integer category,@Param("price11") Double price1,@Param("price12") Double price2);

/*
    List<Product> queryAllSc(@Param("productId") Integer productId);
*/

    List<Product> queryAllTime(@Param("categoryId")Integer categoryId );

    List<Product> queryAllAddTime(String name, Integer categoryId);
}
