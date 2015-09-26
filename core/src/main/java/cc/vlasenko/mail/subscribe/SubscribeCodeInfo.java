package cc.vlasenko.mail.subscribe;


public class SubscribeCodeInfo {
    private String email;
    private String code;

    public SubscribeCodeInfo(String email, String code) {
        this.email = email;
        this.code = code;
    }


    public String getEmail() {
        return email;
    }

    public String getCode() {
        return code;
    }

    @Override
    public String toString() {
        return "SubscribeCodeInfo{" +
                "email='" + email + '\'' +
                ", code='" + code + '\'' +
                '}';
    }
}
