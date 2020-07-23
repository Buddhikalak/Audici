package us.audici.umgt.Enums;

public enum OTPEnum {
    VERIFY(1, "VERIFY"),
    FORGOT(2, "FORGOT"),
    TWOSTEP(3, "TWOSTEP"),
    BLOCKED(4, "BLOCKED"),
    YES(5, "YES"),
    NO(5, "NO");

    private int key;
    private String value;

    OTPEnum(int key, String value) {
        this.key = key;
        this.value = value;
    }

    public static OTPEnum findValue(int key) {
        for (OTPEnum v : values()) {
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
