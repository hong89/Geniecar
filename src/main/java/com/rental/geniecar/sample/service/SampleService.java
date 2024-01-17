package com.rental.geniecar.sample.service;

import com.rental.geniecar.sample.dao.SampleDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SampleService {

    @Autowired
    private SampleDao sampleDao;

    /**
     * dual 카운트 조회
     * @return
     */
    public int selectCount() {
        return sampleDao.selectCount();
    }
}
