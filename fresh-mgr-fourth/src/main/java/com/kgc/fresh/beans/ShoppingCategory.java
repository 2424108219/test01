package com.kgc.fresh.beans;


import lombok.Data;

import java.util.Date;

@Data
public class ShoppingCategory {

    //id 	name 	createTime

    private Integer id;
    private  String cname;
    private Date createTime;

}
