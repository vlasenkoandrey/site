package cc.vlasenko.mail.subscribe;

public class User {
    private final String firstName;
    private final String lastName;
    private final String email;
    private boolean confirmed = false;

    public User(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email.trim().toLowerCase();
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getEmail() {
        return this.email;
    }

    public String getLastName() {
        return this.lastName;
    }

    public boolean isConfirmed() {
        return this.confirmed;
    }

    public void setConfirmed() {
        this.confirmed = true;
    }


    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null) return false;
        if (this.getClass() != o.getClass()) {
            return false;
        }
        User user = (User) o;
        if (this.confirmed != user.confirmed) {
            return false;
        }
        if (this.firstName != null ? !this.firstName.equals(user.firstName) : user.firstName != null) {
            return false;
        }
        if (this.lastName != null ? !this.lastName.equals(user.lastName) : user.lastName != null) {
            return false;
        }
        if (this.email != null) {
            if (this.email.equals(user.email)) return true;
            return false;
        } else {
            if (user.email != null) return false;
            return true;
        }
    }

    public int hashCode() {
        int result = this.firstName != null ? this.firstName.hashCode() : 0;
        result = 31 * result + (this.lastName != null ? this.lastName.hashCode() : 0);
        result = 31 * result + (this.email != null ? this.email.hashCode() : 0);
        result = 31 * result + (this.confirmed ? 1 : 0);
        return result;
    }

    public String toString() {
        return "User{firstName='" + this.firstName + '\'' + ", lastName='" + this.lastName + '\'' + ", email='" + this.email + '\'' + ", confirmed=" + this.confirmed + '}';
    }
}