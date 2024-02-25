package com.rental.geniecar.domain.common;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class SearchVo {

    private SearchType searchType;
    private String keyword;

    private String startDate;
    private String endDate;
    private String name;

}
