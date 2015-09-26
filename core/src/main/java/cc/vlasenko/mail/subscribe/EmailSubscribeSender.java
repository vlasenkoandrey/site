package cc.vlasenko.mail.subscribe;


import cc.vlasenko.mail.GmailClient;
import com.google.gson.Gson;

import javax.inject.Inject;
import java.util.Base64;

public class EmailSubscribeSender {
    @Inject
    private GmailClient gmailClient;
    private Gson gson = new Gson();

    public void sendSubscribeInfo(SubscribeCodeInfo subscribeCodeInfo){
        String subscribeInfoBase64 = Base64.getEncoder().encodeToString(gson.toJson(subscribeCodeInfo).getBytes());
        gmailClient.send(subscribeCodeInfo.getEmail(), "Подписка на новости сайта vlasenko.cc",
                String.format("Вы получили это сообщение, потому что зарегистрировались и заказали подписку на сайте  http://vlasenko.cc \n" +
                                "\n" +
                                "Чтобы подтвердить подписку, пройдите по ссылке http://vlasenko.cc/confirmSubscribe.jsp?info=%s&\n\n" +
                                "Если Вы не хотите получать увемодмления, то просто проигнорируйте это письмо.\n\n",
                        subscribeInfoBase64));


    }
}
