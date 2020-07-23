package us.audici.umgt.Service;

import us.audici.umgt.Models.Request.PhoneNumberModel;

import java.util.List;

import us.audici.umgt.Models.User;

public interface UserService {
    public boolean checkPhoneNumberIsValid(PhoneNumberModel model);
    public User Signup(User user);
    public User SignIn(String Username,String Password);
    public User getUserProfile(int Userid);
    public String sendRiderVerificationOTP(String mobileno,String countryCode);
    public User findByphoneNumber(String phone);
    public User findbyUsername(String username);
    public List<User> findByRole(String Role);

}
