package us.audici.umgt.Models;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

@Data
@Entity
@Table(name ="temp_user_otp")
public class TempUserSMS implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String mobileNumber;
    private String countryCode;
    private String otp;
    private String type;
    private String IsVerified;
    private Timestamp createdTimestamp;
    private Integer attempt;

}
