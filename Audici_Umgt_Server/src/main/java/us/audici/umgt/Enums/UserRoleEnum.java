package us.audici.umgt.Enums;

/**
 * @author : Buddhika Lakshan
 * @Project : Audici_Umgt_Server
 * @Package : us.audici.umgt.Enums
 * @since : 2020-05-21, Thu
 **/

public enum  UserRoleEnum {

    ROLE_CONTESTANT(1, "ROLE_CONTESTANT"),
    ROLE_ADMIN(2, "ROLE_ADMIN"),
    ROLE_JUDGE(3, "ROLE_JUDGE"),
    ROLE_ORG_ADMIN(4, "ROLE_ORG_ADMIN");

    private int key;
    private String value;

    UserRoleEnum(int key, String value) {
        this.key = key;
        this.value = value;
    }

    public static UserRoleEnum findValue(int key) {
        for (UserRoleEnum v : values()) {
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
