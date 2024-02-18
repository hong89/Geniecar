package com.rental.geniecar.business.pay.service;


import com.rental.geniecar.business.pay.dao.BusinessPayDao;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class BusinessPayService {

    private final BusinessPayDao businessPayDao;

}
