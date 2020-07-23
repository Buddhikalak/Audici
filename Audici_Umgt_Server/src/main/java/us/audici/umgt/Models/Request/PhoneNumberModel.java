package us.audici.umgt.Models.Request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel(description = "Request Parameters for check the Mobile Number is valid to The register for this System.")
public class PhoneNumberModel {

    @ApiModelProperty(notes = "Country Code ex +94")
    private String country_code;
    @ApiModelProperty(notes = "Mobile Number ex 0755996086")
    private String number;
}
