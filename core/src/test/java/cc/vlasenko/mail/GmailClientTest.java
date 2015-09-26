package cc.vlasenko.mail;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.inject.Inject;

@RunWith(value=SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:test-beans.xml"})
@ActiveProfiles(profiles={"test"})
public class GmailClientTest {
    @Inject
    private GmailClient gmailClient;

    @Test
    public void test() {
        this.gmailClient.send("polinarodimova@gmail.com", "GmailClientTest", "test body");
    }
}