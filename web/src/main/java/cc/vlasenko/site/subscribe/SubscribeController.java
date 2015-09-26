package cc.vlasenko.site.subscribe;

import cc.vlasenko.mail.subscribe.FollowerUtil;
import cc.vlasenko.mail.subscribe.SubscribeCodeInfo;
import cc.vlasenko.mail.subscribe.SubscribeException;
import cc.vlasenko.mail.subscribe.User;
import com.google.gson.Gson;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import java.util.Base64;

@Controller
public class SubscribeController {
    private final static Logger logger = LoggerFactory.getLogger(SubscribeController.class);
    @Inject
    private FollowerUtil followerUtil;
    private final Gson gson = new Gson();

    @RequestMapping("/requestSubscribe.jsp")
    public void requestSubscribe(@RequestParam("firstName") String firstName,
                                   @RequestParam("lastName") String lastName,
                                   @RequestParam("email") String email) throws SubscribeException {
        followerUtil.requestSubscribe(new User(firstName, lastName, email));
    }


    @RequestMapping("/confirmSubscribe.jsp")
    public void confirmSubscribe(@RequestParam("info") String info) throws SubscribeException {
        SubscribeCodeInfo subscribeCodeInfo = gson.fromJson(new String(Base64.getDecoder().decode(info)), SubscribeCodeInfo.class);
        followerUtil.confirmSubscribe(subscribeCodeInfo.getEmail(), subscribeCodeInfo.getCode());
    }


    @ExceptionHandler(SubscribeException.class)
    public void subscribeError(SubscribeException e) {
        logger.error("subscribe error", e);
    }

    @ExceptionHandler(Throwable.class)
    public void allError(Throwable t) {
        logger.error("subscribe global error", t);
    }
}

