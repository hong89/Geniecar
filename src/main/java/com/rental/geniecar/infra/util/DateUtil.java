package com.rental.geniecar.infra.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {


    public static long dateDifferToHours(String start, String end) throws ParseException {
        DateFormat format = new SimpleDateFormat("yyyyMMdd HH:mm");

        Date startDate = format.parse( start );
        Date endDate  = format.parse( end );
        return (endDate.getTime() - startDate.getTime()) / 3600000; // 시
    }

    public static long dateDifferToMinutes(String start, String end) throws ParseException {
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");

        Date startDate = format.parse( start );
        Date endDate  = format.parse( end );
        return (endDate.getTime() - startDate.getTime()) / 60000; // 분
    }
}
