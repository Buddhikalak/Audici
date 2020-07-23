package us.audici.umgt.Models.Request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author : Buddhika Lakshan
 * @Project : Audici_Umgt_Server
 * @Package : us.audici.umgt.Models.Request
 * @since : 2020-05-21, Thu
 **/
@Data
@ApiModel(description = "Request Parameters for Change The User Password")
public class ChangePasswordModel {
    @ApiModelProperty(notes = "OTP")
    private int otp;
    @ApiModelProperty(notes = "Phone Number")
    private String phone;
    @ApiModelProperty(notes = "Country Code")
    private String country_code;
    @ApiModelProperty(notes = "Old Password")
    private String old_password;
    @ApiModelProperty(notes = "New Password")
    private String new_password;
    @ApiModelProperty(notes = "Type:FORGOT|CHANGE")
    private String type;
}
