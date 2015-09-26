package cc.vlasenko.mail.subscribe;

import java.util.Date;

public class UserConfirmationInfo {
    private final User user;
    private final String code;
    private final Date date;

    public UserConfirmationInfo(User user, String code, Date date) {
        this.user = user;
        this.code = code;
        this.date = date;
    }

    public User getUser() {
        return this.user;
    }

    public String getCode() {
        return this.code;
    }

    public Date getDate() {
        return this.date;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null) return false;
        if (this.getClass() != o.getClass()) {
            return false;
        }
        UserConfirmationInfo that = (UserConfirmationInfo) o;
        if (this.user != null ? !this.user.equals(that.user) : that.user != null) {
            return false;
        }
        if (this.code != null ? !this.code.equals(that.code) : that.code != null) {
            return false;
        }
        if (this.date != null) {
            if (this.date.equals(that.date)) return true;
            return false;
        } else {
            if (that.date != null) return false;
            return true;
        }
    }

    @Override
    public int hashCode() {
        int result = this.user != null ? this.user.hashCode() : 0;
        result = 31 * result + (this.code != null ? this.code.hashCode() : 0);
        result = 31 * result + (this.date != null ? this.date.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "UserConfirmationInfo{" +
                "user=" + user +
                ", code='" + code + '\'' +
                ", date=" + date +
                '}';
    }
}