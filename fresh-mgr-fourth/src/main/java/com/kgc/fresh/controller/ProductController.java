package com.kgc.fresh.controller;

import com.kgc.fresh.beans.Product;
import com.kgc.fresh.beans.Remark;
import com.kgc.fresh.beans.ShoppingCategory;
import com.kgc.fresh.beans.User;
import com.kgc.fresh.service.ProductService;
import com.kgc.fresh.service.RemarkService;
import com.kgc.fresh.service.ShoppingCategoryService;
import com.kgc.fresh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@Controller
public class ProductController {
    @Autowired
   private ShoppingCategoryService shoppingCategoryService;
    @Autowired
    private ProductService productService;
    @Autowired
    private RemarkService remarkService;
    @Autowired
    private UserService userService;

    //去往全部商品页面
    @RequestMapping(value = "toShowProduct")
    public String toShowProduct(Map<String,Object> map, HttpServletRequest request){
        List<ShoppingCategory> shoppingCategories = shoppingCategoryService.getAllCategory();
        map.put("shoppingCategories",shoppingCategories);
        String id = request.getParameter("id") == null ? "0" :  request.getParameter("id");
        List<Product> products = productService.getAllProduct(Integer.valueOf(id));
        map.put("products",products);
        return "product/produ";
    }

    //去往商品详情页面
    @RequestMapping(value = "toProductDetails")
    public String toProductDetails(@RequestParam("id") Integer id, Map<String,Object> map){
        System.out.println("dDAUif哈弗哈哈福建安抚哈酒暗黑风拉横幅"+id);
        List<Product> products = productService.getProduct(Integer.valueOf(id));
        map.put("products",products);
        return "product/productDetails";
    }



    //去往分类页面
    @RequestMapping(value = "toCategory")
    public String toCategory(Map<String,Object> map,@RequestParam("category") Integer category){
        List<Product> products = productService.getAllCategory(category);
        map.put("products",products);
        map.put("categoryId",category);
        return "product/category";
    }

    //分类页面的品种分类、模糊查询、价格查询功能
    @RequestMapping(value = "toCategoryCx")
    public String toCategoryCx(Map<String,Object> map,HttpServletRequest request){
      String name =request.getParameter("name") ==null ? "" :request.getParameter("name");
      String categoryId =request.getParameter("categoryId") ==null ? "" :request.getParameter("categoryId");
      /*  String price = request.getParameter("price10") == null ? "0" :request.getParameter("price10");*/
       String price1 = request.getParameter("price11") == null ? "0" :request.getParameter("price11");
       String price2= request.getParameter("price12") == null ? "0" :request.getParameter("price12");

       Double price11= new Double(price1);
       Double price12= new Double(price2);

     List<Product> products = productService.getAllCategoryCx(name,Integer.valueOf(categoryId),price11,price12);
        map.put("products",products);
        map.put("name",name);
        map.put("categoryId",categoryId);
        return  "product/category";
    }

    //分类页面按时间排序
    @RequestMapping(value = "toShowTime")
    public String toShowTime(Map<String,Object> map,HttpServletRequest request){
       String categoryId=request.getParameter("category") ==null ? "" : request.getParameter("category");
        List<Product> productList = productService.getAllTime(Integer.valueOf(categoryId));
        System.out.println("========================================"+productList);
        map.put("products",productList);
        map.put("categoryId",categoryId);
        return "product/category";
    }

    @RequestMapping(value = "toShowAddTime")
    public  String toShowAddTime(Map<String,Object> map,HttpServletRequest request){
        String name =request.getParameter("name") ==null ? "" :request.getParameter("name");
        String categoryId =request.getParameter("categoryId") ==null ? "" :request.getParameter("categoryId");
        List<Product> products = productService.getAllAddTime(name,Integer.valueOf(categoryId));
        map.put("products",products);
        map.put("categoryId",categoryId);

        return "product/category";
    }

  //商品详情页收藏功能
/*    @RequestMapping(value = "toShowSc")
    public String toShowSc(Map<String,Object> map,HttpServletRequest request){
        String productId = request.getParameter("productId" ) == null ? ""  :request.getParameter("productId");
        List<Product> products = productService.getAllSc(Integer.valueOf(productId));
        map.put("products",products);


        return "product/productDetails";
    }*/

   //查询评论功能
    @RequestMapping("/toShowRemark/{id}")
    public  String toShowRemark(Map<String,Object> map,@PathVariable("id") Integer productId){
        System.out.println("测试"+productId);
        List<Remark> remarks = remarkService.getAllRemark(productId);
        System.out.println(remarks+"111111111111111111111111");
         map.put("remarks",remarks);
        return "/product/productDetails";
    }


    //去热卖页面
    @RequestMapping(value = "toShowHot")
     public String toShowHot(){
        return "product/hot";
     }
















}
