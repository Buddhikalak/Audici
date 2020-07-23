package us.audici.umgt.Models.Request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import us.audici.umgt.Models.Role;

import java.util.List;

/**
 * @author : Buddhika Lakshan
 * @Project : Audici_Umgt_Server
 * @Package : us.audici.umgt.Models.Request
 * @since : 2020-05-21, Thu
 **/
@Data
@ApiModel(description = "Request Parameters for Create User")
public class CreateUserModel {
    @ApiModelProperty(notes = "Userid")
    private Integer id;
    @ApiModelProperty(notes = "Username")
    private String username;
    @ApiModelProperty(notes = "Password")
    private String password;
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
    @ApiModelProperty(notes = "Referral")
    private String referral_id;
    @ApiModelProperty(notes = "Facebook")
    private String facebook_id;
    @ApiModelProperty(notes = "Instagram")
    private String instagram_id;
    @ApiModelProperty(notes = "Google")
    private String google_id;
    @ApiModelProperty(notes = "Fevice id")
    private String device_id;
    @ApiModelProperty(notes = "Firebase")
    private String firebase_token;
    @ApiModelProperty(notes = "Uuid")
    private String active_device_uuid;
    @ApiModelProperty(notes = "Device history")
    private String device_history;
    @ApiModelProperty(notes = "Role EX: ROLE_CONTESTANT,ROLE_ADMIN,ROLE_JUDGE,ROLE_ORG_ADMIN")
    private String role;
}

