package us.audici.umgt.Models;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "user")
@Data
public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    public User() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "username")
    private String username;
    @Column(name = "password")
    private String password;
    @Column(name = "email")
    private String email;
    @Column(name = "enabled")
    private boolean enabled;
    @Column(name = "accountNonExpired")
    private boolean accountNonExpired;
    @Column(name = "credentialsNonExpired")
    private boolean credentialsNonExpired;
    @Column(name = "accountNonLocked")
    private boolean accountNonLocked;

    @Column(name = "first_name")
    private String first_name;

    @Column(name = "middle_name")
    private String middle_name;

    @Column(name = "lastname")
    private String lastname;

    @Column(name = "nic")
    private String nic;

    @Column(name = "gender")
    private String gender;

    @Column(name = "mobile_number")
    private String mobileNumber;

    @Column(name = "picture")
    private String picture;

    @Column(name = "created")
    private Timestamp created;

    @Column(name = "country")
    private int country;

    @Column(name = "district")
    private int district;

    @Column(name = "updated_time_stamp")
    private Timestamp updated_time_stamp;

    @Column(name = "referral_id")
    private String referral_id;

    @Column(name = "facebook_id")
    private String facebook_id;

    @Column(name = "instagram_id")
    private String instagram_id;

    @Column(name = "google_id")
    private String google_id;

    @Column(name = "device_id")
    private String device_id;

    @Column(name = "firebase_token")
    private String firebase_token;

    @Column(name = "active_device_uuid")
    private String active_device_uuid;

    @Column(name = "device_history")
    private String device_history;

    @Column(name = "Dob")
    private Date dob;

    @Column(name = "city")
    private String city;


    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "role_user", joinColumns = {@JoinColumn(name = "user_id", referencedColumnName = "id")},
            inverseJoinColumns = {
                    @JoinColumn(name = "role_id", referencedColumnName = "id")})
    private List<Role> roles;


}
