package com.kgc.fresh.service;

import com.kgc.fresh.beans.Remark;

import java.util.List;

public interface RemarkService {
    List<Remark> getAllRemark(Integer productId);
}
