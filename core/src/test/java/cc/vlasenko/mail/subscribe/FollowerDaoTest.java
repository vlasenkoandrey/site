package cc.vlasenko.mail.subscribe;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.inject.Inject;
import java.util.Date;

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:test-beans.xml"})
@ActiveProfiles(profiles = {"test"})
public class FollowerDaoTest {
    @Inject
    private FollowerDao dao;

    @Test
    public void test() throws SubscribeException {
//        Assert.assertNull(dao.getUser("testPolina@gmail.com"));
//        User user = new User("Polina", "Vlasenko", "testPOLINA@gmail.com");
//        UserConfirmationInfo userConfirmationInfo = new UserConfirmationInfo(user, "123", new Date());
//        dao.saveUser(userConfirmationInfo);
//        Assert.assertEquals(userConfirmationInfo, dao.getUser("testPolina@gmail.com"));
    }
}