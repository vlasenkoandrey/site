package cc.vlasenko.mail.subscribe;

import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.gson.Gson;
import org.apache.commons.codec.binary.Hex;

import javax.annotation.Nullable;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.concurrent.ExecutionException;

public class FollowerDao {
    private final Gson gson = new Gson();
    private LoadingCache<String, UserConfirmationInfo> users;
    private String usersDirPath;

    public FollowerDao() {
        users = CacheBuilder.newBuilder().build(new CacheLoader<String, UserConfirmationInfo>() {
            @Override
            public UserConfirmationInfo load(String email) throws Exception {
                File file = new File(getFileName(email));
                return loadUser(file);
            }
        });
    }

    public synchronized boolean saveUser(UserConfirmationInfo userConfirmationInfo) throws SubscribeException {
        try {
            String email = userConfirmationInfo.getUser().getEmail();
            File file = new File(getFileName(email));
            if (!file.exists()) {
                file.createNewFile();
            }
            try(FileWriter writer = new FileWriter(file)){

                writer.write(gson.toJson(userConfirmationInfo));
                writer.flush();
            }
            users.put(email, userConfirmationInfo);
            return true;
        } catch (Exception e) {
            throw new SubscribeException(e, SubscribeCodes.OTHER);
        }
    }

    public UserConfirmationInfo getUser(String email) throws SubscribeException {
        email = email.trim().toLowerCase();
        try {
            return users.get(email);
        } catch (ExecutionException e) {
            throw new SubscribeException(e, SubscribeCodes.USER_NOT_FOUND);
        }
    }

    @Nullable
    private UserConfirmationInfo loadUser(File file) throws IOException {
        if (!file.exists()) {
            return null;
        }
        byte[] userJson = Files.readAllBytes(Paths.get(file.getAbsolutePath()));
        return (UserConfirmationInfo) gson.fromJson(new String(userJson), (Class) UserConfirmationInfo.class);
    }

    private String getFileName(String email) throws UnsupportedEncodingException {
        return usersDirPath + new String(Hex.encodeHex(email.getBytes("utf-8")));
    }

    public void setUsersDirPath(String usersDirPath) {
        this.usersDirPath = usersDirPath;
    }

    public String getUsersDirPath() {
        return usersDirPath;
    }

}