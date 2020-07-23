package us.audici.umgt.Service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.audici.umgt.DAO.OTPDao;
import us.audici.umgt.Models.TempUserSMS;
import us.audici.umgt.Service.OTPService;

/**
 * Created by Buddhika Lakshan
 * Technology Network Of Australia
 * ProjectName: umgt
 * PackageName: com.muve.umgt.Service.Impl
 * Date:  2/19/20
 */
@Service
public class OTPServiceImpl implements OTPService {

    @Autowired
    OTPDao otpDao;

    @Override
    public int deleteById(Long id) {
        return otpDao.deleteById(id);
    }

    @Override
    public int deleteByMobileNumber(String mobileNumber) {
        return otpDao.deleteByMobileNumber(mobileNumber);
    }

    @Override
    public int save(TempUserSMS tempUsersModel) {
        return otpDao.save(tempUsersModel);
    }

    @Override
    public int update(TempUserSMS tempUsersModel) {
        return otpDao.update(tempUsersModel);
    }

    @Override
    public TempUserSMS findByTypeAndMobileNumber(String type, String mobileNumber) {
        return otpDao.findByTypeAndMobileNumber(type, mobileNumber);
    }

    @Override
    public String verifyOtp(String mobileno, String otp, String type, String mobile_code)  {
        return otpDao.verifyOtp(mobileno, otp, type, mobile_code);
    }

    @Override
    public TempUserSMS findByTypeAndOtpAndMobileNumber(String type, String otp, String mobileNumber) {
        return otpDao.findByTypeAndOtpAndMobileNumber(type,otp,mobileNumber);
    }

    @Override
    public TempUserSMS findByMobileNumber(String mobileNumber) {
        return  otpDao.findByMobileNumber(mobileNumber);
    }
}
