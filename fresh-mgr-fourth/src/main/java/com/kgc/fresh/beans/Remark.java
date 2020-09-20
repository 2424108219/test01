package com.kgc.fresh.beans;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class Remark {
    //id,productId,userId,content,type,createTime,lastModfiyTime
    private Integer id;
    private Integer productId;
    private Integer userId;
    private String content;
    private Integer type;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date lastModfiyTime;
    private String realName;
    private String img;

}
