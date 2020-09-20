package com.kgc.fresh.beans;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class User {
    //userId,userName,password,phone,sex,age,address,realName,img,createDate
    private Integer userId;
    private String userName;
    private String password;
    private String phone;
    private String sex;
    private Integer age;
    private String address;
    private String realName;
    private String img;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createDate;


}
