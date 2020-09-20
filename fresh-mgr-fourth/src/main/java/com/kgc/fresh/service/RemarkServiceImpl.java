package com.kgc.fresh.service;

import com.kgc.fresh.beans.Remark;
import com.kgc.fresh.mapper.RemarkMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RemarkServiceImpl implements RemarkService {

    @Autowired
    private RemarkMapper remarkMapper;

    @Override
    public List<Remark> getAllRemark(Integer productId) {
        return remarkMapper.queryAllRemark(productId);
    }
}
