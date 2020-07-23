package us.audici.umgt.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.audici.umgt.DAO.UserDAO;
import us.audici.umgt.Models.Request.PhoneNumberModel;
import us.audici.umgt.Models.User;
import us.audici.umgt.Service.UserService;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO userDAO;

    @Override
    public boolean checkPhoneNumberIsValid(PhoneNumberModel model) {
        return userDAO.checkPhoneNumberIsValid(model);
    }

    @Override
    public User Signup(User user) {
        return userDAO.Signup(user);
    }

    @Override
    public User SignIn(String Username, String Password) {
        return userDAO.SignIn(Username, Password);
    }

    @Override
    public User getUserProfile(int Userid) {
        return userDAO.getUserProfile(Userid);
    }

    @Override
    public String sendRiderVerificationOTP(String mobileno, String countryCode) {
        return userDAO.sendRiderVerificationOTP(mobileno,countryCode);
    }

    @Override
    public User findByphoneNumber(String phone) {
        return userDAO.findByphoneNumber(phone);
    }

    @Override
    public User findbyUsername(String username) {
        return userDAO.findbyUsername(username);
    }

	@Override
	public List<User> findByRole(String Role) {
		return userDAO.findByRole(Role);
	}

	
}
