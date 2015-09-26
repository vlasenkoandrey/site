package cc.vlasenko.mail.subscribe;


public class SubscribeException
        extends Exception {
    private final int code;

    public SubscribeException(int code) {
        this.code = code;
    }

    public SubscribeException(String message, int code) {
        super(message);
        this.code = code;
    }

    public SubscribeException(String message, Throwable cause, int code) {
        super(message, cause);
        this.code = code;
    }

    public SubscribeException(Throwable cause, int code) {
        super(cause);
        this.code = code;
    }

    public SubscribeException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace, int code) {
        super(message, cause, enableSuppression, writableStackTrace);
        this.code = code;
    }

    public int getCode() {
        return this.code;
    }
}