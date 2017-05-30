package cc.vlasenko.site;


import cc.vlasenko.site.server.MainServer;

public class MainApplication {

    public static void main(String[] args) throws Exception {
        new MainServer().start();
    }
}
