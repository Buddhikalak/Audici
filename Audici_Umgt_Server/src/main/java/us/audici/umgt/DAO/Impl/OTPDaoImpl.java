package us.audici.umgt.DAO.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.audici.umgt.DAO.OTPDao;
import us.audici.umgt.Enums.OTPEnum;
import us.audici.umgt.Models.TempUserSMS;
import us.audici.umgt.Models.User;
import us.audici.umgt.Repository.OTPRepository;
import us.audici.umgt.Service.UserService;
import us.audici.umgt.Utills.CommonsUtil;

@Service
public class OTPDaoImpl implements OTPDao {

    @Autowired
    OTPRepository otpRepository;

    @Autowired
    UserService userService;

    @Override
    public int deleteById(Long id) {
        try {
            otpRepository.deleteById(Math.toIntExact(id));
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int deleteByMobileNumber(String mobileNumber) {
        try {
            otpRepository.deleteByMobileNumber(mobileNumber);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int save(TempUserSMS tempUsersModel) {
        try {
            otpRepository.save(tempUsersModel);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int update(TempUserSMS tempUsersModel) {
        try {
            otpRepository.save(tempUsersModel);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public TempUserSMS findByTypeAndMobileNumber(String type, String mobileNumber) {
        return otpRepository.findByTypeAndMobileNumber(type, mobileNumber);
    }

    @Override
    public String verifyOtp(String mobileno, String otp, String type, String mobile_code) {
        final String databaseOtpType = CommonsUtil.getDatabaseOtpType(type);
        final TempUserSMS byTypeAndMobileNumber = findByTypeAndMobileNumber(databaseOtpType, mobileno);
        if (byTypeAndMobileNumber != null && byTypeAndMobileNumber.getIsVerified().equals("NO")) {
            if (byTypeAndMobileNumber.getAttempt() >= 3) {
                return OTPEnum.BLOCKED.getValue();
            } else {
                final TempUserSMS byTypeAndOtpAndMobileNumber = findByTypeAndOtpAndMobileNumber(databaseOtpType, otp, mobileno);
                if (byTypeAndOtpAndMobileNumber != null) {
                    byTypeAndOtpAndMobileNumber.setIsVerified(OTPEnum.YES.getValue());
                    update(byTypeAndOtpAndMobileNumber);
                    if (type.equals("F")) {
                        byTypeAndOtpAndMobileNumber.setIsVerified(OTPEnum.YES.getValue());
                        update(byTypeAndOtpAndMobileNumber);
                    } else if (type.equals("T")) {
                        byTypeAndOtpAndMobileNumber.setIsVerified(OTPEnum.YES.getValue());
                        update(byTypeAndOtpAndMobileNumber);
                    } else {
                        byTypeAndOtpAndMobileNumber.setIsVerified(OTPEnum.YES.getValue());
                        update(byTypeAndOtpAndMobileNumber);
                    }
                    return "VERIFIED";
                } else {
                    int AttemptCount = byTypeAndMobileNumber.getAttempt() + 1;
                    byTypeAndMobileNumber.setAttempt(AttemptCount);
                    update(byTypeAndMobileNumber);
                    return "INVALID_OTP";
                }
            }

        } else {
            return "INVALID_OTP";
        }
    }

    @Override
    public TempUserSMS findByTypeAndOtpAndMobileNumber(String type, String otp, String mobileNumber) {
        return otpRepository.findByTypeAndOtpAndMobileNumber(type, otp, mobileNumber);
    }

    @Override
    public TempUserSMS findByMobileNumber(String mobileNumber) {
        return otpRepository.findByMobileNumber(mobileNumber);
    }
}
