package us.audici.umgt.Repository;

import org.springframework.data.repository.CrudRepository;
import us.audici.umgt.Models.TempUserSMS;

public interface OTPRepository extends CrudRepository<TempUserSMS,Integer> {
    public int deleteByMobileNumber(String mobilenumber);
    public TempUserSMS findByTypeAndMobileNumber(String type,String mobile);
    public TempUserSMS findByTypeAndOtpAndMobileNumber(String type,String otp,String mobile);
    public TempUserSMS findByMobileNumber (String mobilenumber);

}
