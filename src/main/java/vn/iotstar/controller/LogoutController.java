package vn.iotstar.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.iotstar.util.Constant;

@WebServlet(urlPatterns = { "/logout" })
public class LogoutController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 1. Hủy bỏ Session đăng nhập
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.removeAttribute("account");
            session.invalidate();
        }

        // 2. Xóa Cookie ghi nhớ đăng nhập (nếu có)
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (Constant.COOKIE_REMEMBER.equals(cookie.getName())) {
                    cookie.setMaxAge(0); // Đặt thời gian sống = 0 để trình duyệt xóa cookie
                    cookie.setPath(req.getContextPath().isEmpty() ? "/" : req.getContextPath());
                    resp.addCookie(cookie);
                }
            }
        }

        // 3. Chuyển hướng người dùng về trang đăng nhập
        resp.sendRedirect(req.getContextPath() + "/login");
    }
}