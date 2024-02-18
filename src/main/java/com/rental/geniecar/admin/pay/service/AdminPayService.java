package com.rental.geniecar.admin.pay.service;


import com.rental.geniecar.admin.pay.dao.AdminPayDao;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class AdminPayService {

    private final AdminPayDao adminPayDao;
}
