package us.audici.umgt.Utills;

import us.audici.umgt.Enums.OTPEnum;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

/**
 * Created by Buddhika Lakshan
 * Technology Network Of Australia
 * ProjectName: UserManagement
 * PackageName: com.sltds.muve.usermanagement.Utils
 * Date:  2/10/20
 */
public class CommonsUtil {
    /**
     * get the curent date with format
     * Return a String Date
     *
     * @return String Date
     */
    public static String getCurrentDateString() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss a").format(new Date());
    }

    /**
     * Return a Date and format the date to given date format
     *
     * @param timestamp
     * @param format
     * @return Date
     */
    public static Date getDateFromFormat(final String timestamp, final String format) throws ParseException {
        SimpleDateFormat parser = new SimpleDateFormat(format);
        parser.setTimeZone(TimeZone.getTimeZone("UTC"));
        return parser.parse(timestamp);
    }

    /**
     * Return a currentTimestamp
     *
     * @return timestamp
     */
    public static Date getCurentTimeStamp() {
        Date date = new Date();
        return new Timestamp(date.getTime());
    }

    public static Timestamp getSQLTimeStamp() {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        return timestamp;
    }

    /**
     * Return a boolean value is Date valid or not
     *
     * @param dateStr
     * @return boolean
     */
    public static Boolean isValidDate(String dateStr) {
        try {
            java.sql.Date.valueOf(dateStr);
            return Boolean.TRUE;
        } catch (Exception e) {
            return Boolean.FALSE;
        }
    }

    /**
     * Return a boolean value is timestamp valid or not
     *
     * @param dateStr
     * @return boolean
     */
    public static Boolean isValidTimeStamp(String dateStr) {
        try {
            Timestamp.valueOf(dateStr);
            return Boolean.TRUE;
        } catch (Exception e) {
            return Boolean.FALSE;
        }
    }

    /**
     * Return a given string is a number or not
     *
     * @param key
     * @return isNumber
     */
    public static Boolean isNumber(String key) {

        Boolean isNumber = Boolean.TRUE;
        try {
            Long.parseLong(key);
        } catch (Exception e) {
            isNumber = Boolean.FALSE;
        }
        return isNumber;
    }

    /**
     * Return a given string is a decimal value or not
     *
     * @param key
     * @return isDecimal
     */
    public static Boolean isDecimal(String key) {

        Boolean isDecimal = Boolean.TRUE;
        try {
            Double.parseDouble(key);
        } catch (Exception e) {
            isDecimal = Boolean.FALSE;
        }
        return isDecimal;
    }

    /**
     * Return a given string contains only alpha numeric characters * @param key
     *
     * @return isAlpha
     */
    public static Boolean isAlpha(String key) {

        key = key.toString();
        String validChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

        for (int n = 0; n < key.length(); n++) {
            if (validChars.indexOf(key.substring(n, n + 1)) == -1)
                return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }

    public static String telNumberWithOutCountryCode(String number) {
        String phoneNumber;
        if (number.substring(0, 4).equals("+940")) {
            phoneNumber = number.substring(3, 13);
        } else if (number.substring(0, 3).equals("+94")) {
            phoneNumber = "0" + number.substring(3, 12);
        } else if (number.substring(0, 3).equals("940")) {
            phoneNumber = number.substring(2, 12);
        } else if (number.substring(0, 1).equals("0")) {
            phoneNumber = number;
        } else if (number.substring(0, 2).equals("94")) {
            phoneNumber = "0" + number.substring(2, 11);
        } else {
            phoneNumber = "0" + number;
        }
        return phoneNumber;
    }

    /**
     * Method for Generate OTP String
     *
     * @return
     */

    public static String generateOTP() {
        int randomPin = (int) (Math.random() * 9000) + 1000;
        String otp = String.valueOf(randomPin);
        return otp;
    }


    public static String getDatabaseOtpType(String type) {
        if (type.equals("V")) {
            return OTPEnum.VERIFY.getValue();
        } else if (type.equals("F")) {
            return OTPEnum.FORGOT.getValue();
        } else {
            return OTPEnum.TWOSTEP.getValue();
        }
    }

    public static String generateUserUnqueId(String firstname,int primaryKey){
        String first3Characters="";
        String priKey=primaryKey+"";
        if(firstname.length()>=3){
            first3Characters= firstname.substring(0, 3).toUpperCase();
        }else{
            first3Characters= firstname.toUpperCase();
        }
        return first3Characters+priKey;
    }
}
