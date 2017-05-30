package cc.vlasenko.mail;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.util.Properties;

import javax.annotation.PostConstruct;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class GmailClient {
//    private static final Logger logger = LoggerFactory.getLogger((Class) GmailClient.class);
//    private static final String APPLICATION_NAME = "vlasenko.cc";
//    private static final File DATA_STORE_DIR = new File(System.getProperty("user.home"), ".credentials/gmail-api-quickstart");
//    private volatile FileDataStoreFactory dataStoreFactory;
//    private volatile JsonFactory jsonFactory;
//    private volatile HttpTransport httpTransport;
//    private volatile Gmail gmail;
    private String secretFilePath;

   // @PostConstruct
//    public void init() throws IOException, GeneralSecurityException {
//        try {
//            httpTransport = GoogleNetHttpTransport.newTrustedTransport();
//            jsonFactory = JacksonFactory.getDefaultInstance();
//            dataStoreFactory = new FileDataStoreFactory(DATA_STORE_DIR);
//            Credential credential = authorize();
//            gmail = new Gmail.Builder(httpTransport, jsonFactory, credential).setApplicationName("vlasenko.cc").build();
//
//        }catch (Exception e){
//            //пока все равно не используется
//            logger.error("can't init GmailClient");
//        }
//    }
//
//    private Credential authorize() throws IOException {
//        try (InputStream is = getClass().getClassLoader().getResourceAsStream(secretFilePath)) {
//            GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(jsonFactory, new InputStreamReader(is));
//            GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(httpTransport, jsonFactory, clientSecrets, GmailScopes.all())
//                    .setDataStoreFactory(dataStoreFactory)
//                    .setAccessType("offline")
//                    .build();
//            Credential credential = new AuthorizationCodeInstalledApp(flow, new LocalServerReceiver()).authorize("user");
//            logger.info("Credentials saved to {}", DATA_STORE_DIR.getAbsolutePath());
//            return credential;
//        }
//    }

    public String send(String receiver, String subject, String body) {
//        try {
//            logger.info("sending mail to {}, subject: {}", receiver, subject);
//            com.google.api.services.gmail.model.Message message = createMessageWithEmail(createEmail(receiver, "vlasenko.cc", subject, body));
//            gmail.users().messages();
//            message = gmail.users().messages().send("me", message).execute();
//            logger.info("Message id: {}", message.getId());
            return "success";
//        } catch (Exception e) {
//            logger.error("error while send subscribe email for {}",receiver,  e);
//            return "error:" + e.getMessage();
//        }
    }
//
//    private MimeMessage createEmail(String to, String from, String subject, String bodyText) throws MessagingException {
//        Properties props = new Properties();
//        Session session = Session.getDefaultInstance(props);
//        MimeMessage email = new MimeMessage(session);
//        InternetAddress tAddress = new InternetAddress(to);
//        InternetAddress fAddress = new InternetAddress(from);
//        email.setFrom(new InternetAddress(from));
//        email.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
//        email.setSubject(subject);
//        email.setText(bodyText);
//        return email;
//    }
//
//    private com.google.api.services.gmail.model.Message createMessageWithEmail(MimeMessage email) throws IOException, MessagingException {
//        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
//        email.writeTo(bytes);
//        String encodedEmail = Base64.encodeBase64URLSafeString(bytes.toByteArray());
//        com.google.api.services.gmail.model.Message message = new com.google.api.services.gmail.model.Message();
//        message.setRaw(encodedEmail);
//        return message;
//    }
//
    public void setSecretFilePath(String secretFilePath) {
        this.secretFilePath = secretFilePath;
    }

    public String getSecretFilePath() {
        return secretFilePath;
    }
}