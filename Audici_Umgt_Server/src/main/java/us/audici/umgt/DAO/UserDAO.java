package us.audici.umgt.DAO;

import us.audici.umgt.Models.Request.PhoneNumberModel;

import java.util.List;

import us.audici.umgt.Models.User;

public interface UserDAO {

    public String sendRiderVerificationOTP(String mobileno, String countryCode);

    public boolean checkPhoneNumberIsValid(PhoneNumberModel model);

    public User Signup(User user);

    public User SignIn(String Username, String Password);

    public User getUserProfile(int Userid);

    public User findbyUsername(String username);

    public User findByphoneNumber(String phone);
    
    public List<User> findByRole(String Role);
}
