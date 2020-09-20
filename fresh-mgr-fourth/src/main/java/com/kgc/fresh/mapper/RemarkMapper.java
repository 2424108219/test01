package com.kgc.fresh.mapper;

import com.kgc.fresh.beans.Remark;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RemarkMapper {
    List<Remark> queryAllRemark(@Param("productId") Integer productId);
}
