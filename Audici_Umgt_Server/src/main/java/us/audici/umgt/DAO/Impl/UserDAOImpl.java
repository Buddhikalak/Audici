package us.audici.umgt.DAO.Impl;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.audici.umgt.DAO.UserDAO;
import us.audici.umgt.Enums.OTPEnum;
import us.audici.umgt.Models.Request.PhoneNumberModel;
import us.audici.umgt.Models.Role;
import us.audici.umgt.Models.TempUserSMS;
import us.audici.umgt.Models.User;
import us.audici.umgt.Repository.OTPRepository;
import us.audici.umgt.Repository.RoleRepository;
import us.audici.umgt.Repository.UserRepository;
import us.audici.umgt.Service.OTPService;
import us.audici.umgt.Utills.CommonsUtil;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

@Service
public class UserDAOImpl implements UserDAO {
    private static final Logger logger = LogManager.getLogger(UserDAOImpl.class);
    @Autowired
    UserRepository userRepository;

    @Autowired
    OTPRepository otpRepository;

    @Autowired
    OTPService otpService;
    
    @Autowired
    RoleRepository role;
    


    @Override
    @Transactional
    public String sendRiderVerificationOTP(String mobileno, String countryCode) {
        final String generateOTP = CommonsUtil.generateOTP();
        TempUserSMS tempUserSMS = new TempUserSMS();
        tempUserSMS.setAttempt(0);
        tempUserSMS.setCountryCode(countryCode);
        tempUserSMS.setCreatedTimestamp(CommonsUtil.getSQLTimeStamp());
        tempUserSMS.setIsVerified(OTPEnum.NO.getValue());
        tempUserSMS.setMobileNumber(mobileno);
        tempUserSMS.setOtp(generateOTP);
        tempUserSMS.setType(OTPEnum.VERIFY.getValue());

        final int deleteByMobileNumber = otpRepository.deleteByMobileNumber(mobileno);

        if (deleteByMobileNumber != 1) {
            logger.debug("Deleting Fail Old Temp UserModel Record");
        } else {
            logger.debug("Deleted Fail Old Temp UserModel Record");
        }
        logger.info("******************sendRiderVerificationOTP******************");
        logger.info(tempUserSMS.toString());
        logger.info("************************************");
        final int save = otpService.save(tempUserSMS);
        if (save != 1) {
            logger.info("Insert Fail OTP Temp UserModel Record");
        } else {
            //todo send the SMS Gateway
            logger.debug("OTP:" + generateOTP);
            logger.debug("Insert Sucessfully Temp UserModel Record");
        }
        return generateOTP;
    }


    @Override
    public boolean checkPhoneNumberIsValid(PhoneNumberModel model) {
        String number = CommonsUtil.telNumberWithOutCountryCode(model.getNumber());
        final User byMobile_number = userRepository.findByMobileNumber(number);
        if (byMobile_number != null) {
            return true;
        } else {
            return false;
        }

    }

    @Override
    public User Signup(User user) {
        logger.info("******************Signup******************");
        logger.info(user.toString());
        logger.info("************************************");
        return userRepository.save(user);
    }

    @Override
    public User SignIn(String Username, String Password) {
        return null;
    }

    @Override
    public User getUserProfile(int Userid) {
        return userRepository.findById(Userid).get();
    }

    @Override
    public User findbyUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public User findByphoneNumber(String phone) {
        return userRepository.findByMobileNumber(phone);
    }


	@Override
	public List<User> findByRole(String role) {
		List<User> userlist=new ArrayList<User>();
		Iterable<User> list=userRepository.findAll();
		for (User user : list) {
			List<Role> roles=user.getRoles();
			for (Role role3 : roles) {
				String roleName=role3.getName();
				if(role.equals(roleName)) {
					userlist.add(user);
				}
			}
		}
		return userlist;
	}
}
