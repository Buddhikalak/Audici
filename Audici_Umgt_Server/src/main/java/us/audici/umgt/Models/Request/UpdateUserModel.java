package us.audici.umgt.Models.Request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

/**
 * @author : Buddhika Lakshan
 * @Project : Audici_Umgt_Server
 * @Package : us.audici.umgt.Models.Request
 * @since : 2020-07-13, Mon
 **/
@Data
@ApiModel(description = "Request Parameters for Update User")
public class UpdateUserModel {
    @ApiModelProperty(notes = "Userid")
    private Integer id;
    @ApiModelProperty(notes = "Username")
    private String username;
    @ApiModelProperty(notes = "Email")
    private String email;
    @ApiModelProperty(notes = "FirstName")
    private String first_name;
    @ApiModelProperty(notes = "Middle Name")
    private String middle_name;
    @ApiModelProperty(notes = "Last Name")
    private String lastname;
    @ApiModelProperty(notes = "Nic EX 965789675V")
    private String nic;
    @ApiModelProperty(notes = "Gender EX : MALE,FEMALE")
    private String gender;
    @ApiModelProperty(notes = "Mobile Number")
    private String mobileNumber;
    @ApiModelProperty(notes = "Picture")
    private String picture;
    @ApiModelProperty(notes = "Country id")
    private int country;
    @ApiModelProperty(notes = "District id")
    private int district;

    @ApiModelProperty(notes = "City Name")
    private String city;

    @ApiModelProperty(notes = "Dob")
    private Date dob;
}


