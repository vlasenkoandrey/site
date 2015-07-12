package cc.vlasenko;


import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

import static java.util.Arrays.stream;

public class RenameFiles {
    private final static String path = "c:/tmp/sailing";

    public static void main(String[] args) {
        copy("icon");
        copy("src");
    }

    public static void copy(String newDirName) {
        File newIcon = new File(path + "/" + newDirName);
        if (!newIcon.exists()){
            newIcon.mkdir();
        }
        AtomicInteger i =new AtomicInteger(0);
        stream(new File(path + "/photo").list()).forEach(file -> {
            File initFile = new File(path + "/photo/" + file);
            File newFile = new File(path+"/" + newDirName + "/" + i.incrementAndGet() + ".jpg");
            try {
                FileUtils.copyFile(initFile, newFile);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });
    }
}
