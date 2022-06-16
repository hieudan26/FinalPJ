package Utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

public class CSRFUltils {
    public static String getToken() throws NoSuchAlgorithmException {
        // tạo ra Anti CSRF token
        SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG");
        byte[] data = new byte[16];
        secureRandom.nextBytes(data);

        // convert to Base64 string
        return Base64.getEncoder().encodeToString(data);
    }
    public static Boolean doAction(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // lấy Anti CSRF token từ cookie
        List<String> csrfCookie = new ArrayList<>();
        for (Cookie cookie : request.getCookies()) {
            if (cookie.getName().equals("csrfTokenMioca")) {
                csrfCookie.add(cookie.getValue());
            }
        }

        // lấy Anti CSRF token từ field
        String csrfField = request.getParameter("csrfTokenMioca");

        // Kiểm tra Anti CSRF token
        if (csrfCookie.isEmpty() || csrfField == null || !csrfCookie.contains(csrfField)) {
                response.sendError(401);
                return false;
        }
        return true;
    }
}
