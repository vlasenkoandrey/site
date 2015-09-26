package cc.vlasenko.mail.subscribe;

import javax.inject.Inject;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Date;

public class FollowerUtil {
    private final SecureRandom random = new SecureRandom();
    private final FollowerDao followerDao;
    private final EmailSubscribeSender emailSubscribeSender;

    @Inject
    public FollowerUtil(FollowerDao followerDao, EmailSubscribeSender emailSubscribeSender) {
        this.followerDao = followerDao;
        this.emailSubscribeSender = emailSubscribeSender;
    }

    public int requestSubscribe(User user) throws SubscribeException {
        UserConfirmationInfo userConfirmationInfo = this.followerDao.getUser(user.getEmail());
        if (userConfirmationInfo != null && userConfirmationInfo.getUser().isConfirmed()) {
            return SubscribeCodes.ALREADY_SUBSCUBE;
        }
        userConfirmationInfo = new UserConfirmationInfo(user, this.generateRandomString(), new Date());
        followerDao.saveUser(userConfirmationInfo);
        emailSubscribeSender.sendSubscribeInfo(
                new SubscribeCodeInfo(user.getEmail(), userConfirmationInfo.getCode()));
        return SubscribeCodes.OK;
    }

    public int confirmSubscribe(String email, String code) throws SubscribeException {
        UserConfirmationInfo userConfirmationInfo = this.followerDao.getUser(email);
        if (userConfirmationInfo == null) {
            return SubscribeCodes.USER_NOT_FOUND;
        }
        if (userConfirmationInfo.getUser().isConfirmed()) {
            return SubscribeCodes.ALREADY_SUBSCUBE;
        }
        if (userConfirmationInfo.getDate().after(new Date(System.currentTimeMillis() + 15 * 60 * 1000))){
            return SubscribeCodes.TOO_LATE;
        }
        if (!userConfirmationInfo.getCode().equals(code)) {
            return SubscribeCodes.WRONG_CONFIRMATION_CODE;
        }
        userConfirmationInfo.getUser().setConfirmed();
        this.followerDao.saveUser(userConfirmationInfo);
        return SubscribeCodes.OK;
    }

    private String generateRandomString() {
        return new BigInteger(130, this.random).toString(32);
    }
}