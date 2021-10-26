package Config;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SecurityConfig {

    public static final String ROLE_USER = "user";
    public static final String ROLE_ADMIN = "admin";

    private static final Map<String, List<String>> mapConfig = new HashMap<String, List<String>>();

    static {
        init();
    }
    private static void init() {
        // Cấu hình cho vai trò "user".
        List<String> urlPatterns1 = new ArrayList<String>();
        urlPatterns1.add("/home");
        urlPatterns1.add("/account");
        mapConfig.put(ROLE_USER, urlPatterns1);

        // Cấu hình cho vai trò "admin".
        List<String> urlPatterns2 = new ArrayList<String>();
        urlPatterns2.add("/manager");
        mapConfig.put(ROLE_ADMIN, urlPatterns2);
    }

    public static Set<String> getAllAppRoles() {
        return mapConfig.keySet();
    }

    public static List<String> getUrlPatternsForRole(String role) {
        return mapConfig.get(role);
    }

}