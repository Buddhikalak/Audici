package us.audici.umgt.Controller;

import brave.sampler.Sampler;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sun.istack.NotNull;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.oauth2.resource.ResourceServerProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;
import us.audici.umgt.Enums.ErrorMessagesEnum;
import us.audici.umgt.Enums.UserRoleEnum;
import us.audici.umgt.Models.Request.*;
import us.audici.umgt.Models.Response.BaseRestResponse;
import us.audici.umgt.Models.Role;
import us.audici.umgt.Models.TempUserSMS;
import us.audici.umgt.Models.User;
import us.audici.umgt.Repository.RoleRepository;
import us.audici.umgt.Repository.UserRepository;
import us.audici.umgt.Service.OTPService;
import us.audici.umgt.Service.UserService;
import us.audici.umgt.Utills.CommonsUtil;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

;

@RestController
@RequestMapping(path = "/api/v1/user")
@Api(value = "Audici User Management Api", description = "Check The User Base Api With Swagger")
public class UserController {
    private static final Logger logger = LogManager.getLogger(UserController.class);
    @Autowired
    UserService userService;

    @Autowired
    OTPService otpService;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    ResourceServerProperties resourceServerProperties;

    @Bean
    public Sampler defaultSampler() {
        return Sampler.ALWAYS_SAMPLE;
    }

    /**
     * @return ResponseEntity
     * @apiNote This api is developed for Check the Phone Number is valid
     * url - /check
     * @method - POST
     */

    @PostMapping(path = "/ws/check")
    @ApiOperation(value = "Check The Mobile Number is Valid to Register", response = BaseRestResponse.class)
    public @ResponseBody
    ResponseEntity<String> checkRiderMobileNumber(@NotNull @RequestBody PhoneNumberModel model) {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.APPLICATION_JSON);
        ObjectMapper mapper = new ObjectMapper();
        BaseRestResponse baseResponse = new BaseRestResponse();
        String responseJson = "";
        try {
            boolean checkPhoneNumberIsValid = userService.checkPhoneNumberIsValid(model);
            if (checkPhoneNumberIsValid) {
                baseResponse.setError(true);
                baseResponse.setData(null);
                baseResponse.setCode(ErrorMessagesEnum.PHONE_ALREADY_EXISTED.getKey());
                baseResponse.setMessage(ErrorMessagesEnum.PHONE_ALREADY_EXISTED.getValue());
                responseJson = mapper.writeValueAsString(baseResponse);
                return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);
            } else {
                final String validPhoneNumber = CommonsUtil.telNumberWithOutCountryCode(model.getNumber());
                final String verificationOTP =
                        userService.sendRiderVerificationOTP(validPhoneNumber, model.getCountry_code());
                if (verificationOTP != null) {
                    baseResponse.setError(false);
                    baseResponse.setData(verificationOTP);
                    baseResponse.setCode(ErrorMessagesEnum.SUCESSFULLY_CREATED.getKey());
                    baseResponse.setMessage(ErrorMessagesEnum.SUCESSFULLY_CREATED.getValue());
                    responseJson = mapper.writeValueAsString(baseResponse);
                    return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);
                } else {
                    baseResponse.setError(true);
                    baseResponse.setData(null);
                    baseResponse.setCode(ErrorMessagesEnum.UNABLE_TO_PROCEED.getKey());
                    baseResponse.setMessage(ErrorMessagesEnum.UNABLE_TO_PROCEED.getValue());
                    responseJson = mapper.writeValueAsString(baseResponse);
                    return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
                }
            }
        } catch (Exception ex) {
            logger.error(ex.getMessage());
            baseResponse.setError(true);
            baseResponse.setData(null);
            baseResponse.setMessage(ex.getMessage().toString());
            baseResponse.setCode(500);
            try {
                responseJson = mapper.writeValueAsString(baseResponse);
            } catch (IOException ext) {
                ext.printStackTrace();
            }
            ex.printStackTrace();
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @return ResponseEntity
     * @apiNote This api is developed for verify the otp
     * url - /otpverify
     * @method - POST
     */
    @PostMapping(path = "/ws/otpverify")
    @ApiOperation(value = "Check The Mobile Number is Valid to Register", response = BaseRestResponse.class)
    public @ResponseBody
    ResponseEntity<String> otpVerify(@NotNull @RequestBody VerifyOtp verifyOtpDTO) {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.APPLICATION_JSON);
        ObjectMapper mapper = new ObjectMapper();
        BaseRestResponse baseResponse = new BaseRestResponse();
        String responseJson = "";
        try {
            boolean doTwoFactor = false;
            if (verifyOtpDTO.getDoTwofactor().equals("1")) {
                doTwoFactor = true;
            } else {
                doTwoFactor = false;
            }
            String riderPhoneNumber = CommonsUtil.telNumberWithOutCountryCode(verifyOtpDTO.getMobileNo());
            final String reslut = otpService.verifyOtp(riderPhoneNumber, verifyOtpDTO.getOtp(), verifyOtpDTO.getType(),
                    verifyOtpDTO.getMobileCode());

            if (reslut.equals("INVALID_OTP")) {
                baseResponse.setError(true);
                baseResponse.setData(null);
                baseResponse.setMessage(ErrorMessagesEnum.INVALID_OTP.getValue());
                baseResponse.setCode(ErrorMessagesEnum.INVALID_OTP.getKey());
                responseJson = mapper.writeValueAsString(baseResponse);
                return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.CREATED);
            } else if (reslut.equals("BLOCKED")) {
                baseResponse.setError(true);
                baseResponse.setData(null);
                baseResponse.setMessage(ErrorMessagesEnum.BLOCKED_OTP.getValue());
                baseResponse.setCode(ErrorMessagesEnum.BLOCKED_OTP.getKey());
                responseJson = mapper.writeValueAsString(baseResponse);
                return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.CREATED);
            } else if (reslut.equals("VERIFIED")) {
                baseResponse.setError(false);
                baseResponse.setData(null);
                baseResponse.setMessage(ErrorMessagesEnum.SUCESSFULLY_OTP.getValue());
                baseResponse.setCode(ErrorMessagesEnum.SUCESSFULLY_OTP.getKey());
                responseJson = mapper.writeValueAsString(baseResponse);
                return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);
            } else {
                baseResponse.setError(true);
                baseResponse.setData(null);
                baseResponse.setMessage(ErrorMessagesEnum.INVALID_OTP.getValue());
                baseResponse.setCode(ErrorMessagesEnum.INVALID_OTP.getKey());
                responseJson = mapper.writeValueAsString(baseResponse);
                return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.CREATED);
            }

        } catch (Exception ex) {
            logger.error(ex.getMessage());
            baseResponse.setError(true);
            baseResponse.setData(null);
            baseResponse.setMessage(ex.getMessage().toString());
            baseResponse.setCode(500);
            try {
                responseJson = mapper.writeValueAsString(baseResponse);
            } catch (IOException ext) {
                ext.printStackTrace();
            }
            ex.printStackTrace();
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @return ResponseEntity
     * @apiNote This api is developed for Create New User
     * url - /create
     * @method - POST
     */
    @PostMapping(path = "/ws/create")
    @ApiOperation(value = "Create new User to the system", response = BaseRestResponse.class)
    public @ResponseBody
    ResponseEntity<String> CreateNewUser(@NotNull @RequestBody CreateUserModel createUserModel) {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.APPLICATION_JSON);
        ObjectMapper mapper = new ObjectMapper();
        BaseRestResponse baseResponse = new BaseRestResponse();
        String responseJson = "";
        try {
            /*check the phone number is valid*/
            String riderPhoneNumber = CommonsUtil.telNumberWithOutCountryCode(createUserModel.getMobileNumber());
            final User byphoneNumber = userService.findByphoneNumber(riderPhoneNumber);
            if (byphoneNumber == null) {
                /*check the username is valid*/
                final User findbyUsername = userService.findbyUsername(createUserModel.getUsername());
                if (findbyUsername == null) {
                    TempUserSMS tempUserSMS = otpService.findByMobileNumber(riderPhoneNumber);
                    if (tempUserSMS != null && tempUserSMS.getIsVerified().equals("YES")) {
                        /*create the profile*/
                        User user = new User();
                        user.setAccountNonExpired(true);
                        user.setAccountNonLocked(true);
                        user.setActive_device_uuid(createUserModel.getActive_device_uuid());
                        user.setCountry(createUserModel.getCountry());
                        user.setCreated(CommonsUtil.getSQLTimeStamp());
                        user.setCredentialsNonExpired(true);
                        user.setDevice_history(createUserModel.getDevice_history());
                        user.setDevice_id(createUserModel.getDevice_id());
                        user.setDistrict(createUserModel.getDistrict());
                        user.setEmail(createUserModel.getEmail());
                        user.setEnabled(true);
                        user.setFacebook_id(createUserModel.getFacebook_id());
                        user.setFirebase_token(createUserModel.getFirebase_token());
                        user.setFirst_name(createUserModel.getFirst_name());
                        user.setGender(createUserModel.getGender());
                        user.setGoogle_id(createUserModel.getGoogle_id());
                        user.setInstagram_id(createUserModel.getInstagram_id());
                        user.setLastname(createUserModel.getLastname());
                        user.setMiddle_name(createUserModel.getMiddle_name());
                        user.setMobileNumber(riderPhoneNumber);
                        user.setNic(createUserModel.getNic());
                        user.setPassword("{bcrypt}" + passwordEncoder.encode(createUserModel.getPassword()));

                        // need to upload picture
                        user.setPicture(createUserModel.getPicture());
                        user.setReferral_id(createUserModel.getReferral_id());

                        if (createUserModel.getRole() == null || createUserModel.getRole() == "" || createUserModel.getRole().equals("ROLE_CONTESTANT")) {

                            Role role = roleRepository.findByName(UserRoleEnum.ROLE_CONTESTANT.getValue());
                            List<Role> roleList = new ArrayList<>();
                            roleList.add(role);
                            user.setRoles(roleList);

                        } else if (createUserModel.getRole().equals("ROLE_ADMIN")) {

                            Role role = roleRepository.findByName(UserRoleEnum.ROLE_ADMIN.getValue());
                            List<Role> roleList = new ArrayList<>();
                            roleList.add(role);
                            user.setRoles(roleList);

                        } else if (createUserModel.getRole().equals("ROLE_JUDGE")) {

                            Role role = roleRepository.findByName(UserRoleEnum.ROLE_JUDGE.getValue());
                            List<Role> roleList = new ArrayList<>();
                            roleList.add(role);
                            user.setRoles(roleList);

                        } else if (createUserModel.getRole().equals("ROLE_ORG_ADMIN")) {

                            Role role = roleRepository.findByName(UserRoleEnum.ROLE_ORG_ADMIN.getValue());
                            List<Role> roleList = new ArrayList<>();
                            roleList.add(role);
                            user.setRoles(roleList);

                        } else {

                            Role role = roleRepository.findByName(UserRoleEnum.ROLE_CONTESTANT.getValue());
                            List<Role> roleList = new ArrayList<>();
                            roleList.add(role);
                            user.setRoles(roleList);
                        }


                        user.setUsername(createUserModel.getUsername().toLowerCase());
                        System.out.println(user.toString());
                        User user1 = userService.Signup(user);

                        baseResponse.setError(false);
                        baseResponse.setData(null);
                        baseResponse.setMessage(ErrorMessagesEnum.USER_CREATED_SUCCESSFULLY.getValue());
                        baseResponse.setCode(ErrorMessagesEnum.USER_CREATED_SUCCESSFULLY.getKey());
                        responseJson = mapper.writeValueAsString(baseResponse);
                        return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);

                    } else {
                        baseResponse.setError(true);
                        baseResponse.setData(byphoneNumber);
                        baseResponse.setMessage("Otp is not veryfied.");
                        baseResponse.setCode(201);
                        responseJson = mapper.writeValueAsString(baseResponse);
                        return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.FOUND);
                    }

                } else {
                    baseResponse.setError(true);
                    baseResponse.setData(byphoneNumber);
                    baseResponse.setMessage("This Username is already registed.");
                    baseResponse.setCode(201);
                    responseJson = mapper.writeValueAsString(baseResponse);
                    return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.FOUND);
                }
            } else {
                baseResponse.setError(true);
                baseResponse.setData(byphoneNumber);
                baseResponse.setMessage("This phone number is already registed.");
                baseResponse.setCode(201);
                responseJson = mapper.writeValueAsString(baseResponse);
                return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.FOUND);

            }


        } catch (Exception ex) {
            logger.error(ex.getMessage());
            baseResponse.setError(true);
            baseResponse.setData(null);
            baseResponse.setMessage(ex.getMessage().toString());
            baseResponse.setCode(500);
            try {
                responseJson = mapper.writeValueAsString(baseResponse);
            } catch (IOException ext) {
                ext.printStackTrace();
            }
            ex.printStackTrace();
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @return ResponseEntity
     * @apiNote This api is developed for CReate Otp for Change Password
     * url - /forgot
     * @method - POST
     */
    @PostMapping(path = "/ws/forgot")
    @ApiOperation(value = "Forgot Password Api", response = BaseRestResponse.class)
    public @ResponseBody
    ResponseEntity<String> ForgotPassword(@NotNull @RequestBody PhoneNumberModel model) {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.APPLICATION_JSON);
        ObjectMapper mapper = new ObjectMapper();
        BaseRestResponse baseResponse = new BaseRestResponse();
        String responseJson = "";
        try {
            String riderPhoneNumber = CommonsUtil.telNumberWithOutCountryCode(model.getNumber());
            boolean checkPhoneNumberIsValid = userService.checkPhoneNumberIsValid(model);
            if (checkPhoneNumberIsValid) {
                String riderVerificationOTP = userService.sendRiderVerificationOTP(riderPhoneNumber, model.getCountry_code());
                if (riderVerificationOTP != null) {
                    baseResponse.setError(false);
                    baseResponse.setData(riderVerificationOTP);
                    baseResponse.setCode(ErrorMessagesEnum.SUCESSFULLY_CREATED.getKey());
                    baseResponse.setMessage(ErrorMessagesEnum.SUCESSFULLY_CREATED.getValue());
                    responseJson = mapper.writeValueAsString(baseResponse);
                    return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);
                } else {
                    baseResponse.setError(true);
                    baseResponse.setData(null);
                    baseResponse.setCode(ErrorMessagesEnum.UNABLE_TO_PROCEED.getKey());
                    baseResponse.setMessage(ErrorMessagesEnum.UNABLE_TO_PROCEED.getValue());
                    responseJson = mapper.writeValueAsString(baseResponse);
                    return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
                }

            } else {
                baseResponse.setError(true);
                baseResponse.setData(null);
                baseResponse.setCode(ErrorMessagesEnum.INVALID_PHONE_NUMBER.getKey());
                baseResponse.setMessage(ErrorMessagesEnum.INVALID_PHONE_NUMBER.getValue());
                responseJson = mapper.writeValueAsString(baseResponse);
                return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);
            }


        } catch (Exception ex) {
            logger.error(ex.getMessage());
            baseResponse.setError(true);
            baseResponse.setData(null);
            baseResponse.setMessage(ex.getMessage().toString());
            baseResponse.setCode(500);
            try {
                responseJson = mapper.writeValueAsString(baseResponse);
            } catch (IOException ext) {
                ext.printStackTrace();
            }
            ex.printStackTrace();
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @return ResponseEntity
     * @apiNote This api is developed for Change Password
     * url - /forgot
     * @method - POST
     */
    @PutMapping(path = "/ws/changepassword")
    @ApiOperation(value = "Forgot Password Api", response = BaseRestResponse.class)
    public @ResponseBody
    ResponseEntity<String> changePassword(@NotNull @RequestBody ChangePasswordModel model) {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.APPLICATION_JSON);
        ObjectMapper mapper = new ObjectMapper();
        BaseRestResponse baseResponse = new BaseRestResponse();
        String responseJson = "";
        try {
            String riderPhoneNumber = CommonsUtil.telNumberWithOutCountryCode(model.getPhone());
            final String reslut = otpService.verifyOtp(riderPhoneNumber, model.getOtp() + "", "V", model.getCountry_code());
            if (reslut.equals("INVALID_OTP")) {
                if (model.getType().equals("CHANGE")) {
                    User UserbyNumber = userService.findByphoneNumber(riderPhoneNumber);
                    String OldEncrypted = UserbyNumber.getPassword();
                    String[] arr = OldEncrypted.split("bcrypt}");
                    boolean matches = passwordEncoder.matches(model.getOld_password(), arr[1]);
                    if (matches) {
                        UserbyNumber.setPassword("{bcrypt}" + passwordEncoder.encode(model.getNew_password()));
                        userRepository.save(UserbyNumber);
                        baseResponse.setError(false);
                        baseResponse.setData(null);
                        baseResponse.setMessage(ErrorMessagesEnum.CHANGE_PASSWORD_SUCCESSFULLY.getValue());
                        baseResponse.setCode(ErrorMessagesEnum.CHANGE_PASSWORD_SUCCESSFULLY.getKey());
                        responseJson = mapper.writeValueAsString(baseResponse);
                        return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);
                    } else {
                        baseResponse.setError(true);
                        baseResponse.setData(null);
                        baseResponse.setMessage(ErrorMessagesEnum.PASSWORD_MATCH_ERROR.getValue());
                        baseResponse.setCode(ErrorMessagesEnum.PASSWORD_MATCH_ERROR.getKey());
                        responseJson = mapper.writeValueAsString(baseResponse);
                        return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.CREATED);
                    }
                }

                baseResponse.setError(true);
                baseResponse.setData(null);
                baseResponse.setMessage(ErrorMessagesEnum.INVALID_OTP.getValue());
                baseResponse.setCode(ErrorMessagesEnum.INVALID_OTP.getKey());
                responseJson = mapper.writeValueAsString(baseResponse);
                return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.CREATED);
            } else if (reslut.equals("BLOCKED")) {
                baseResponse.setError(true);
                baseResponse.setData(null);
                baseResponse.setMessage(ErrorMessagesEnum.BLOCKED_OTP.getValue());
                baseResponse.setCode(ErrorMessagesEnum.BLOCKED_OTP.getKey());
                responseJson = mapper.writeValueAsString(baseResponse);
                return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.CREATED);
            } else if (reslut.equals("VERIFIED")) {
                if (model.getType().equals("FORGOT")) {
                    User UserbyNumber = userService.findByphoneNumber(riderPhoneNumber);
                    UserbyNumber.setPassword("{bcrypt}" + passwordEncoder.encode(model.getNew_password()));
                    userRepository.save(UserbyNumber);

                    baseResponse.setError(false);
                    baseResponse.setData(null);
                    baseResponse.setMessage(ErrorMessagesEnum.CHANGE_PASSWORD_SUCCESSFULLY.getValue());
                    baseResponse.setCode(ErrorMessagesEnum.CHANGE_PASSWORD_SUCCESSFULLY.getKey());
                    responseJson = mapper.writeValueAsString(baseResponse);
                    return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);
                } else if (model.getType().equals("CHANGE")) {
                    User UserbyNumber = userService.findByphoneNumber(riderPhoneNumber);
                    String OldEncrypted = UserbyNumber.getPassword();
                    String[] arr = OldEncrypted.split("bcrypt}");
                    boolean matches = passwordEncoder.matches(model.getOld_password(), arr[1]);
                    if (matches) {
                        UserbyNumber.setPassword("{bcrypt}" + passwordEncoder.encode(model.getNew_password()));
                        userRepository.save(UserbyNumber);
                        baseResponse.setError(false);
                        baseResponse.setData(null);
                        baseResponse.setMessage(ErrorMessagesEnum.CHANGE_PASSWORD_SUCCESSFULLY.getValue());
                        baseResponse.setCode(ErrorMessagesEnum.CHANGE_PASSWORD_SUCCESSFULLY.getKey());
                        responseJson = mapper.writeValueAsString(baseResponse);
                        return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);
                    } else {
                        baseResponse.setError(true);
                        baseResponse.setData(null);
                        baseResponse.setMessage(ErrorMessagesEnum.PASSWORD_MATCH_ERROR.getValue());
                        baseResponse.setCode(ErrorMessagesEnum.PASSWORD_MATCH_ERROR.getKey());
                        responseJson = mapper.writeValueAsString(baseResponse);
                        return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.CREATED);
                    }
                } else {
                    baseResponse.setError(true);
                    baseResponse.setData(null);
                    baseResponse.setMessage(ErrorMessagesEnum.PASSSWORD_CHANGE_TYPE_ERROR.getValue());
                    baseResponse.setCode(ErrorMessagesEnum.PASSSWORD_CHANGE_TYPE_ERROR.getKey());
                    responseJson = mapper.writeValueAsString(baseResponse);
                    return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.CREATED);
                }
            } else {
                baseResponse.setError(true);
                baseResponse.setData(null);
                baseResponse.setMessage(ErrorMessagesEnum.INVALID_OTP.getValue());
                baseResponse.setCode(ErrorMessagesEnum.INVALID_OTP.getKey());
                responseJson = mapper.writeValueAsString(baseResponse);
                return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.CREATED);
            }

        } catch (Exception ex) {
            logger.error(ex.getMessage());
            baseResponse.setError(true);
            baseResponse.setData(null);
            baseResponse.setMessage(ex.getMessage().toString());
            baseResponse.setCode(500);
            try {
                responseJson = mapper.writeValueAsString(baseResponse);
            } catch (IOException ext) {
                ext.printStackTrace();
            }
            ex.printStackTrace();
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @return ResponseEntity
     * @apiNote This api is developed for Get User Details
     * url - /forgot
     * @method - GET
     */
    @GetMapping(path = "/details/{id}")
    @ApiOperation(value = "User Details Api", response = BaseRestResponse.class)
    public @ResponseBody
    ResponseEntity<String> GetUserDetails(@NotNull @PathVariable("id") int id) {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.APPLICATION_JSON);
        ObjectMapper mapper = new ObjectMapper();
        BaseRestResponse baseResponse = new BaseRestResponse();
        String responseJson = "";
        try {
            User profile = userService.getUserProfile(id);
            baseResponse.setError(false);
            baseResponse.setData(profile);
            baseResponse.setMessage(ErrorMessagesEnum.USER_DETAILS.getValue());
            baseResponse.setCode(ErrorMessagesEnum.USER_DETAILS.getKey());
            responseJson = mapper.writeValueAsString(baseResponse);
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);

        } catch (Exception ex) {
            logger.error(ex.getMessage());
            baseResponse.setError(true);
            baseResponse.setData(null);
            baseResponse.setMessage(ex.getMessage().toString());
            baseResponse.setCode(500);
            try {
                responseJson = mapper.writeValueAsString(baseResponse);
            } catch (IOException ext) {
                ext.printStackTrace();
            }
            ex.printStackTrace();
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @return ResponseEntity
     * @apiNote This api is developed for Get User Details
     * url - /forgot
     * @method - GET
     */
    @GetMapping(path = "/details/phone/{phone}")
    @ApiOperation(value = "User Details Api [by phone number]", response = BaseRestResponse.class)
    public @ResponseBody
    ResponseEntity<String> GetUserDetailsByPhone(@NotNull @PathVariable("phone") String phone) {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.APPLICATION_JSON);
        ObjectMapper mapper = new ObjectMapper();
        BaseRestResponse baseResponse = new BaseRestResponse();
        String responseJson = "";
        try {
            String riderPhoneNumber = CommonsUtil.telNumberWithOutCountryCode(phone);
            User profile = userService.findByphoneNumber(riderPhoneNumber);
            baseResponse.setError(false);
            baseResponse.setData(profile);
            baseResponse.setMessage(ErrorMessagesEnum.USER_DETAILS.getValue());
            baseResponse.setCode(ErrorMessagesEnum.USER_DETAILS.getKey());
            responseJson = mapper.writeValueAsString(baseResponse);
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);

        } catch (Exception ex) {
            logger.error(ex.getMessage());
            baseResponse.setError(true);
            baseResponse.setData(null);
            baseResponse.setMessage(ex.getMessage().toString());
            baseResponse.setCode(500);
            try {
                responseJson = mapper.writeValueAsString(baseResponse);
            } catch (IOException ext) {
                ext.printStackTrace();
            }
            ex.printStackTrace();
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @return ResponseEntity
     * @apiNote This api is developed for get  Details by role
     * url - /ws/details/roles/<role
     * @method - GET
     */

    @GetMapping(path = "/ws/details/roles/{role}")
    @ApiOperation(value = "User Details Api [by role{ROLE_ADMIN,ROLE_CONTESTANT,ROLE_JUDGE,ROLE_ORG_ADMIN}]", response = BaseRestResponse.class)
    public @ResponseBody
    ResponseEntity<String> GetUserDetailsByrole(@NotNull @PathVariable("role") String role) {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.APPLICATION_JSON);
        ObjectMapper mapper = new ObjectMapper();
        BaseRestResponse baseResponse = new BaseRestResponse();
        String responseJson = "";
        try {
            List<User> list = userService.findByRole(role);
            baseResponse.setError(false);
            baseResponse.setData(list);
            baseResponse.setMessage(ErrorMessagesEnum.USER_DETAILS.getValue());
            baseResponse.setCode(ErrorMessagesEnum.USER_DETAILS.getKey());
            responseJson = mapper.writeValueAsString(baseResponse);
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);

        } catch (Exception ex) {
            logger.error(ex.getMessage());
            baseResponse.setError(true);
            baseResponse.setData(null);
            baseResponse.setMessage(ex.getMessage().toString());
            baseResponse.setCode(500);
            try {
                responseJson = mapper.writeValueAsString(baseResponse);
            } catch (IOException ext) {
                ext.printStackTrace();
            }
            ex.printStackTrace();
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * @return ResponseEntity
     * @apiNote This api is developed for Update User Details
     * url - /details/update
     * @method - PUT
     */
    @PutMapping(path = "/details/update")
    @ApiOperation(value = "User Details Update ApI", response = BaseRestResponse.class)
    public @ResponseBody
    ResponseEntity<String> UpdateUser(@NotNull @RequestBody UpdateUserModel updateUserModel) {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.APPLICATION_JSON);
        ObjectMapper mapper = new ObjectMapper();
        BaseRestResponse baseResponse = new BaseRestResponse();
        String responseJson = "";
        try {
            Optional<User> byId = userRepository.findById(updateUserModel.getId());
            if (byId.get() != null) {
                String riderPhoneNumber = CommonsUtil.telNumberWithOutCountryCode(updateUserModel.getMobileNumber());

                if (!updateUserModel.getFirst_name().equals("")) {
                    byId.get().setFirst_name(updateUserModel.getFirst_name());
                }
                if (!updateUserModel.getMiddle_name().equals("")) {
                    byId.get().setMiddle_name(updateUserModel.getMiddle_name());
                }
                if (!updateUserModel.getLastname().equals("")) {
                    byId.get().setLastname(updateUserModel.getLastname());
                }
                if (!updateUserModel.getNic().equals("")) {
                    byId.get().setNic(updateUserModel.getNic());
                }
                if (updateUserModel.getDob() != null) {
                    byId.get().setDob(updateUserModel.getDob());
                }
                if (!updateUserModel.getGender().equals("")) {
                    byId.get().setGender(updateUserModel.getGender());
                }

                if (!updateUserModel.getCity().equals("")) {
                    byId.get().setCity(updateUserModel.getCity());
                }

                if (!updateUserModel.getMobileNumber().equals("")) {
                    byId.get().setMobileNumber(riderPhoneNumber);
                }

                if (!updateUserModel.equals("")) {

                } else {
                    final User findbyUsername = userService.findbyUsername(updateUserModel.getUsername());
                    if (findbyUsername == null) {
                        byId.get().setUsername(updateUserModel.getUsername());
                    } else {
                        baseResponse.setError(true);
                        baseResponse.setData(null);
                        baseResponse.setMessage("This Username is already registed.");
                        baseResponse.setCode(201);
                        responseJson = mapper.writeValueAsString(baseResponse);
                        return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.FOUND);
                    }
                }

                if (!updateUserModel.getEmail().equals("")) {
                    byId.get().setEmail(updateUserModel.getEmail());
                }
                byId.get().setCountry(updateUserModel.getCountry());
                byId.get().setDistrict(updateUserModel.getDistrict());
                byId.get().setPicture(updateUserModel.getPicture());
                byId.get().setUpdated_time_stamp(CommonsUtil.getSQLTimeStamp());

                userRepository.save(byId.get());

            }
            baseResponse.setError(false);
            baseResponse.setData(null);
            baseResponse.setMessage(ErrorMessagesEnum.USER_UPDATE_SUCCESSFULLY.getValue());
            baseResponse.setCode(ErrorMessagesEnum.USER_UPDATE_SUCCESSFULLY.getKey());
            responseJson = mapper.writeValueAsString(baseResponse);
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);

        } catch (Exception ex) {
            logger.error(ex.getMessage());
            baseResponse.setError(true);
            baseResponse.setData(null);
            baseResponse.setMessage(ex.getMessage().toString());
            baseResponse.setCode(500);
            try {
                responseJson = mapper.writeValueAsString(baseResponse);
            } catch (IOException ext) {
                ext.printStackTrace();
            }
            ex.printStackTrace();
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


}
