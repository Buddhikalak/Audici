package us.audici.umgt.Enums;
/**
 * Created by Buddhika Lakshan
 * Technology Network Of Australia
 * ProjectName: umgt
 * PackageName: com.muve.umgt.Enum
 * Date:  2/19/20
 */
public enum ErrorMessagesEnum {
    UNABLE_TO_PROCEED(1, "Unable to proceed your request at this time.please try again later."),
    PHONE_ALREADY_EXISTED(2, "This number is already taken"),
    SUCESSFULLY_CREATED(3, "Your operation has been submitted successfully"),
    AUTHENTICATED_SUCESSFULLY(4, "Authenticated successfully"),
    BAD_CREDENTIALS(5, "UserModel Credentials are Invalid - Please enter a valid username and password"),
    INVALID_OTP(6, "Invalid verification code"),
    BLOCKED_OTP(7, "You have reached the maximum number of attempts to be used with your Audici account. Please contact administrator to unblock your new device to use the app"),
    SUCESSFULLY_OTP(8,"Mobile number successfully verified"),
    USER_CREATED_SUCCESSFULLY(9,"User Created Successfully"),
    INVALID_PHONE_NUMBER(10,"Invalid Phone Number"),
    PASSWORD_MATCH_ERROR(11,"Password did not match."),
    CHANGE_PASSWORD_SUCCESSFULLY(11,"Change password Successfully."),
    USER_DETAILS(12,"User Details"),
    PASSSWORD_CHANGE_TYPE_ERROR(13,"Can't foud the password change type"),
    USER_UPDATE_SUCCESSFULLY(14,"User Update successfully.")
    ;

    private int key;
    private String value;

    ErrorMessagesEnum(int key, String value) {
        this.key = key;
        this.value = value;
    }

    public static ErrorMessagesEnum findValue(int key) {
        for (ErrorMessagesEnum v : values()) {
            if (v.getKey() == key) {
                return v;
            }
        }
        return null;
    }

    public int getKey() {
        return key;
    }

    public void setKey(int key) {
        this.key = key;
    }

    public String getValue() {
        return value;
    }
}
