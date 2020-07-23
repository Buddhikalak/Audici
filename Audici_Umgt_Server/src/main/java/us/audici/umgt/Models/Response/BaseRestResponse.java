package us.audici.umgt.Models.Response;

import lombok.Data;

@Data
public class BaseRestResponse {
    private Boolean error;
    private String message;
    private Object data;
    private int code;
}
