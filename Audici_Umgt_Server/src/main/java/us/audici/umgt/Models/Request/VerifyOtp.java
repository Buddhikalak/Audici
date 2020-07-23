package us.audici.umgt.Models.Request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel(description = "Request Parameters for Validate OTP code before register to this System.")
public class VerifyOtp {

    @ApiModelProperty(notes = "Otp")
    private String otp;
    @ApiModelProperty(notes = "Type")
    private String type;
    @ApiModelProperty(notes = "Mobile Number")
    private String mobileNo;
    @ApiModelProperty(notes = "Password")
    private String password;
    @ApiModelProperty(notes = "Tow factor is enable :1 else 0")
    private String doTwofactor;
    @ApiModelProperty(notes = "Device Id")
    private String deviceId;
    @ApiModelProperty(notes = "Country Code ex +94")
    private String mobileCode;
}
