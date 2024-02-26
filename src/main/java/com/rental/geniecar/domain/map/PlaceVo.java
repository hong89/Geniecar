package com.rental.geniecar.domain.map;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PlaceVo {
	private String id;
	private String addressName;
    private String categoryGroupName;
    private String categoryName;
    private String phone;
    private String placeName;
    private String placeUrl;
    private String roadAddressName;
    private String x;
    private String y;
    
    public String getaddress_name(){
    	return this.addressName;
    }
    
    public String getcategory_group_name(){
    	return this.categoryGroupName;
    }
    
    public String getcategory_name(){
    	return this.categoryName;
    }
    
    public String getplace_name(){
    	return this.placeName;
    }
    
    public String getplace_url(){
    	return this.placeUrl;
    }
    
    public String getroad_address_name(){
    	return this.roadAddressName;
    }
    
    public String getdistance() {
    	return "";
    }
    
    public String getcategory_group_code() {
    	return "";
    }
}
