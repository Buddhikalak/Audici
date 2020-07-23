package us.audici.umgt.Service;

import us.audici.umgt.Models.TempUserSMS;

/**
 * Created by Buddhika Lakshan
 * Technology Network Of Australia
 * ProjectName: umgt
 * PackageName: com.muve.umgt.Service
 * Date:  2/19/20
 */
public interface OTPService {
    int deleteById(Long id);

    int deleteByMobileNumber(String mobileNumber);

    int save(TempUserSMS tempUsersModel);

    int update(TempUserSMS tempUsersModel);

    public TempUserSMS findByTypeAndMobileNumber(String type, String mobileNumber);

    public String verifyOtp(String mobileno, String otp, String type, String mobile_code) ;

    public TempUserSMS findByTypeAndOtpAndMobileNumber(String type, String otp, String mobileNumber);

    public TempUserSMS findByMobileNumber(String mobileNumber);
}
