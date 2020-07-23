package us.audici.umgt.DAO;

import us.audici.umgt.Models.TempUserSMS;

public interface OTPDao {
    int deleteById(Long id);

    int deleteByMobileNumber(String mobileNumber);

    int save(TempUserSMS tempUsersModel);

    int update(TempUserSMS tempUsersModel);

    public TempUserSMS findByTypeAndMobileNumber(String type, String mobileNumber);

    public String verifyOtp(String mobileno, String otp, String type, String mobile_code) ;

    public TempUserSMS findByTypeAndOtpAndMobileNumber(String type, String otp, String mobileNumber);

    public TempUserSMS findByMobileNumber(String mobileNumber);
}
