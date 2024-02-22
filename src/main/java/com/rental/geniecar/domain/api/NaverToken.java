package com.rental.geniecar.domain.api;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Getter;
import lombok.Setter;

@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
@Getter @Setter
public class NaverToken {
    private String accessToken;
    private String refreshToken;
    private String tokenType;
    private String expiresIn;
}
